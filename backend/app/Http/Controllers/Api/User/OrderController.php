<?php

namespace App\Http\Controllers\Api\User;

use App\Services\FcmService;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Order;
use App\Models\Cart;
use App\Models\Coupon;
use App\Models\Address;
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
            'price'          => "required|numeric", // Subtotal (إجمالي المنتجات)
            'coupon_id'      => "nullable|integer", 
            'payment_method' => "required|in:0,1",  // 0 => cash, 1 => payment card
        ]);

        $user = $request->user();

        try {
            return DB::transaction(function () use ($request, $user) {
                
                $subtotal       = $request->price; 
                $couponId       = $request->coupon_id;
                $coupon         = null;
                $discountAmount = 0.0;
                $couponName     = null;

                // 1. التحقق من الكوبون وحساب قيمة الخصم وتجميد البيانات
                if ($couponId) {
                    $coupon = Coupon::where("id", $couponId)->first();

                    if (!$coupon || $coupon->count <= 0 || $coupon->isExpired()) {
                        return response()->json([
                            "status"  => "failure",
                            "message" => "عذراً، الكوبون المستخدم لم يعد صالحاً أو انتهت صلاحيته"
                        ], 422);
                    }

                    // حساب مبلغ الخصم المالي وتخزين كود الكوبون
                    $discountAmount = $subtotal * ($coupon->discount / 100);
                    $couponName     = $coupon->name;

                    // خصم كمية الكوبون المستعملة
                    $coupon->decrement('count'); 
                }

                // 2. حساب سعر التوصيل والإجمالي النهائي
                $priceDelivery = ($request->type == 1) ? 0 : $request->delivery_price;
                $finalTotal    = max(0, ($subtotal - $discountAmount) + $priceDelivery);

                $address = Address::find($request->address_id);

                // 3. إنشاء سجل الطلب بحقول Snapshot ثابتة ومستقلة
                $order = Order::create([
                    "user_id"         => $user->id,
                    "address_id"      => $address?->id,
                    "address_name"    => $address?->name,
                    "address_city"    => $address?->city,
                    "address_street"  => $address?->street,
                    "address_lat"     => $address?->lat,
                    "address_long"    => $address?->long,
                    "type"            => $request->type,
                    "delivery_price"  => round($priceDelivery, 2),
                    "price"           => round($subtotal, 2),          // الإجمالي قبل الخصم
                    "discount_amount" => round($discountAmount, 2),    // مبلغ الخصم المالي المباشر
                    "discount_rate"   => $coupon?->discount ?? 0,          // نسبة الخصم
                    "total_price"     => round($finalTotal, 2),        // الإجمالي النهائي بعد الخصم والشحن
                    "coupon_id"       => $couponId,                    // للتقارير والإحصائيات
                    "coupon_name"     => $couponName,                  // تجميد اسم الكوبون
                    "payment_method"  => $request->payment_method,
                    "status"          => 0                             // 0 => Pending
                ]);

                // 4. ربط عناصر السلة برقم هذا الطلب وإغلاقها
                Cart::where("user_id", $user->id)
                    ->whereNull("order_id")
                    ->update(['order_id' => $order->id]);

                return response()->json([
                    "status"      => "success",
                    "message"     => "تم تسجيل طلبك بنجاح برقم #{$order->id}",
                    "order_id"    => $order->id,
                    "total_price" => round($finalTotal, 2) 
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

        $orders = $user->orders()
                       ->where("status", '!=', 4)
                       ->latest()
                       ->get();

        if ($orders->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد طلبات مسجلة حالياً",
                "data"    => []
            ]);
        }

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

        $orders = $user->orders()
                       ->where("status", 4)
                       ->latest()
                       ->get();

        if ($orders->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد طلبات مؤرشفة",
                "data"    => []
            ]);
        }

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

        $rawCartItems = Cart::with("item")
            ->where("order_id", $order->id)
            ->get();

        $cartItems = Cart::formatItems($rawCartItems);

        return response()->json([
            "status"     => "success",
            "cart_items" => $cartItems,
            "order_info" => $order, 
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
     * تقييم الطلب
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