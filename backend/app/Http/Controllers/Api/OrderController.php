<?php

namespace App\Http\Controllers\Api;

use App\Services\FcmService;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Order;
use App\Models\Cart;
use App\Models\Coupon;
use App\Models\Notification;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderController extends Controller
{  
    /**
     * إتمام عملية الشراء وتحويل السلة إلى طلب حقيقي (Checkout)
     * POST /api/order/checkout
     */
    public function store(Request $request)
    {
        $request->validate([
            'address_id'     => "nullable|integer", 
            'type'           => "required|in:0,1",  // 0 => Delivery, 1 => Drive Thru
            'delivery_price' => "required|numeric",
            'price'          => "required|numeric", 
            'coupon_id'      => "nullable|integer", 
            'payment_method' => "required|in:0,1",  // 0 => cash, 1 => payment card
        ]);

        $user = $request->user();

        try {
            // استخدام الـ Transaction لضمان سلامة البيانات
            return DB::transaction(function () use ($request, $user) {
                
                $priceBase = $request->price; 
                $couponId  = $request->coupon_id;

                // 1. التحقق من الكوبون إن وجد في الطلب
                $coupon = null;
                if ($couponId) {
                    $coupon = Coupon::where("id", $couponId)->first();

                    if (!$coupon || $coupon->count <= 0 || $coupon->isExpired()) {
                        return response()->json([
                            "status"  => "failure",
                            "message" => "عذراً، الكوبون المستخدم لم يعد صالحاً أو انتهت صلاحيته"
                        ], 422);
                    }
                }

                // 2. معالجة حسابات الخصم للكوبون الصالح 
                if ($coupon) {
                    $priceBase = $priceBase - ($priceBase * ($coupon->discount / 100));     
                    $coupon->decrement('count'); 
                }

                // 3. حساب سعر التوصيل بناءً على نوع الاستلام والعنوان
                $priceDelivery = ($request->type == 1) ? 0 : $request->delivery_price;
                $totalPrice    = $priceBase + $priceDelivery;
                $addressId     = ($request->type == 1) ? null : $request->address_id;

                // 4. إنشاء سجل الطلب النظيف بالريال السعودي فقط
                $order = Order::create([
                    "user_id"        => $user->id,
                    "address_id"     => $addressId,
                    "type"           => $request->type,
                    "delivery_price" => round($priceDelivery, 2),
                    "price"          => round($request->price, 2),
                    "total_price"    => round($totalPrice, 2),
                    "coupon_id"      => $couponId,
                    "payment_method" => $request->payment_method,
                    "status"         => 0 // 0 => Pending (قيد الانتظار)
                ]);

                // 5. تحديث وتصفير السلة: ربط جميع العناصر المفتوحة برقم هذا الطلب
                Cart::where("user_id", $user->id)
                    ->whereNull("order_id")
                    ->update(['order_id' => $order->id]);

                return response()->json([
                    "status"      => "success",
                    "message"     => "تم تسجيل طلبك بنجاح برقم #{$order->id}",
                    "order_id"    => $order->id,
                    "total_price" => round($totalPrice, 2) 
                ]);
        });

        } catch (\Throwable $e) {
            return response()->json([
                "status"  => "failure",
                "message" => "فشل في إتمام عملية الشراء",
                "error"   => $e->getMessage(),
                "line"    => $e->getLine()
            ], 500);
        }
    }

    /**
     * عرض قائمة الطلبات الخاصة بالمستخدم الحالي
     * GET /api/order/pending
     */
    public function index(Request $request)
    {
        $user = $request->user();

        // جلب الطلبات مع بيانات الكوبون المرتبط
        $orders = $user->orders()->with('coupon')->where("status", '!=', 5)->latest()->get();

        if ($orders->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد طلبات مسجلة حالياً",
                "data"    => []
            ]);
        }

        // تجهيز نسبة الخصم للفرونت إند بشكل صريح
        $orders->transform(function($order) {
            $order->coupon_discount = $order->coupon ? $order->coupon->discount : 0;
            return $order;
        });

        return response()->json([
            "status" => "success", 
            "data"   => $orders
        ]);
    }
    /**
     * عرض قائمة الطلبات الخاصة بالمستخدم الحالي
     * GET /api/order/archive
     */
    public function indexArchive(Request $request)
    {
        $user = $request->user();

        // جلب الطلبات مع بيانات الكوبون المرتبط
        $orders = $user->orders()->with('coupon')->where("status", 5)->latest()->get();

        if ($orders->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد طلبات مؤرشفة",
                "data"    => []
            ]);
        }

        // تجهيز نسبة الخصم للفرونت إند بشكل صريح
        $orders->transform(function($order) {
            $order->coupon_discount = $order->coupon ? $order->coupon->discount : 0;
            return $order;
        });

        return response()->json([
            "status" => "success", 
            "data"   => $orders
        ]);
    }

    /**
     * عرض تفاصيل ومحتويات طلب محدد بأمان
     * GET /api/order/details/{id}
     */
    public function show(Request $request, $id)
    {
        $user = $request->user();

        $order = $user->orders()->with('address')->find($id);

        if (!$order) {
            return response()->json([
                "status"  => "failure", 
                "message" => "الطلب غير موجود أو غير مصرح لك باستعراضه"
            ], 404);
        }

        // جلب عناصر السلة المرتبطة بهذا الطلب
        $cartItems = Cart::with("item")
                    ->where("order_id", $order->id)
                    ->get();

        $cartItems = $cartItems->groupBy('item_id')->map(function ($group) {
            $item      = $group->first()->item;
            $unitPrice = $item->price - ($item->price * $item->discount / 100);
            $count     = $group->count();
            
            return [
                'item'             => $item,
                'count_items'      => $count,
                'item_price'       => round($unitPrice, 2), 
                'total_item_price' => round($count * $unitPrice, 2), 
            ];
        })->values();

        return response()->json([
            "status"       => "success",
            "cart_items"   => $cartItems,
            "order_info"   => $order,
            "address"      => $order->address 
        ]);
    }
    /**
     * حذف طلب
     * DELETE /api/order/delete/{id}
     */
    public function destroy(Request $request, $id)
    {
        $order = $request->user()->orders()->find($id);

        if (!$order) {
            return response()->json([
                "status"  => "failure", 
                "message" => "الطلب غير موجود أو غير مصرح لك بالحذف"
            ], 404);
        }

        $order->delete();

        return response()->json([
            "status"  => "success", 
            "message" => "تم حذف الطلب بنجاح"
        ]);
    }
    /**
     * حذف طلب
     * PUT /api/order/rate/{id}
     */
    public function rate(Request $request, $id)
    {
        $order = $request->user()->orders()->find($id);

        if (!$order) {
            return response()->json([
                "status"  => "failure", 
                "message" => "الطلب غير موجود أو غير مصرح لك بالحذف"
            ], 404);
        }

        $order->update([
            "rating" => $request->rating,
            "review" => $request->review
        ]);
        
        return response()->json([
            "status"  => "success", 
            "message" => "شكرا على تقييمك"
        ]);
    }
}