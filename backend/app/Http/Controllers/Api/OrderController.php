<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Cart;
use App\Models\Coupon;
use App\Models\Address;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{  
    /**
     * إتمام عملية الشراء (Checkout)
     * POST /api/order/checkout
     */
    public function store(Request $request)
    {
        $request->validate([
            'addressesid'   => "required",
            'type'          => "required", // 0 => Delivery, 1 => Drive Thru
            'pricedelivery' => "required",
            'price'         => "required",
            'couponsid'     => "required", 
            'paymentmethod' => "required",
        ]);

        $user = $request->user();

        try {
            return DB::transaction(function () use ($request, $user) {
                
                $totalPrice = $request->price;
                
                // // 1. التحقق من الكوبون (بناءً على المعرف الممرر)
                $coupon = Coupon::where("coupons_id", $request->couponsid)
                    ->where("coupons_expiredate", ">", now()) 
                    ->where("coupons_count", ">", 0)
                    ->first();

                if (!$coupon && $request->couponsid != 0) {
                    return response()->json([
                        "status"  => "failure",
                        "message" => "الكوبون لم يعد صالحاً"
                    ]);
                }

                // // 2. معالجة الخصم
                if ($coupon) {
                    $totalPrice = $totalPrice - ($totalPrice * ($coupon->coupons_discount / 100));     
                    $coupon->decrement('coupons_count'); 
                }

                // // 3. حساب سعر التوصيل والعنوان
                $priceDelivery = ($request->type == "1") ? 0 : $request->pricedelivery;
                $totalPrice    = $totalPrice + $priceDelivery;
                $addressID     = ($request->addressesid == "0") ? null : $request->addressesid;

                // // 4. إنشاء الطلب
                $order = Order::create([
                    "orders_usersID"        => $user->users_id,
                    "orders_addressesID"    => $addressID,
                    "orders_type"           => $request->type,
                    "orders_price_delivery" => $priceDelivery,
                    "orders_price"          => $request->price,
                    "orders_total_price"    => $totalPrice,
                    "orders_couponID"       => $request->couponsid,
                    "orders_payment_method" => $request->paymentmethod,
                    "orders_status"         => 0 // 0 => Pending
                ]);

                // // 5. تحديث السلة: ربط العناصر المفتوحة بهذا الطلب
                Cart::where("carts_usersID", $user->users_id)
                    ->where("carts_ordersID", 0)
                    ->update(['carts_ordersID' => $order->orders_id]);

                return response()->json([
                    "status"  => "success",
                    "message" => "تم تسجيل طلبك بنجاح برقم #{$order->orders_id}"
                ]);
            });
        } catch (\Exception $e) {
            return response()->json([
                "status"  => "failure",
                "message" => "فشل في إتمام الطلب، يرجى المحاولة لاحقاً"
            ], 500);
        }
    }

    /**
     * عرض جميع طلبات المستخدم
     * GET /api/order/pending
     */
    public function index(Request $request)
    {
        $user = $request->user();

        $orders = Order::with('coupon')
            ->where("orders_usersID", $user->users_id)
            ->latest() // // أحدث الطلبات أولاً
            ->get();

        if ($orders->isEmpty()) {
            return response()->json([
                "status" => "success",
                "data" => [],
                "message" => "لا توجد طلبات سابقة"
            ]);
        }

        // // تخصيص البيانات للعرض في التطبيق
        $orders->transform(function($order) {
            $order->coupon_discount = $order->coupon ? $order->coupon->coupons_discount : 0;
            return $order;
        });

        return response()->json(["status" => "success", "data" => $orders]);
    }

    /**
     * عرض تفاصيل طلب محدد
     * GET /api/order/details/{id}
     */
    public function show(Request $request, $id)
    {
        $user = $request->user();

        // // جلب عناصر السلة المرتبطة بهذا الطلب تحديداً
        $cartItems = Cart::with("item")
                    ->where("carts_usersID", $user->users_id)
                    ->where("carts_ordersID", $id)
                    ->get();

        if ($cartItems->isEmpty()) {
            return response()->json(["status" => "failure", "message" => "تفاصيل الطلب غير موجودة"], 404);
        }

        // تجميع المنتجات وحساب الكميات والأسعار
        $itemsData = $cartItems->groupBy('carts_itemsID')->map(function ($group) {
            $item       = $group->first()->item; 
            $unitPrice  = $item->discounted_price; 
            $count      = $group->count();
            
            return [
                'item'             => $item,
                'count_items'      => $count,
                'item_price'       => $unitPrice,
                'total_item_price' => $count * $unitPrice, 
            ];
        })->values();

        $itemsData = $cartItems->groupBy('carts_itemsID')->map(function ($group) {
            $item       = $group->first();
            $unitPrice  = $item->item->items_price_discount; 
            $count      = $group->count();
            
            return [
                'item'             => $item->item,
                'count_items'      => $count,
                'item_price'       => $unitPrice,
                'total_item_price' => $count * $unitPrice, 
            ];
        })->values();

        // جلب بيانات الطلب لمعرفة العنوان المرتبط به
        $order = Order::find($id);

        return response()->json([
            "status"     => "success",
            "cartItems"       => $itemsData,
            "order_info" => $order,
            "address"    => $order->address 
        ]);
    }
}