<?php

namespace App\Http\Controllers\Api\Delivery\Order;

use App\Services\FcmService;
use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\User;
use App\Models\Order;
use App\Models\Notification;
use Illuminate\Http\Request;

class DeliveryOrderController extends Controller
{
    // 0 => pending => ينتظر موافقة الآدمن،
    // 1 => approved_by_admin => تم قبول الطلب من قبل الآدمن،
    // 2 => assigned_to_delivery => تم قبول الطلب من قبل المندوب،
    // 3 => on_the_way => على الطريق
    // 4 => received => تم الاستلام
    // 5 => cancelled_by_admin => تم الالغاء من قبل الآدمن،
    
    /**
     * عرض قائمة الطلبات الخاصة بالمستخدم الحالي
     * GET /api/delivery/order/pending
     */
    public function pending(Request $request)
    {
        // جلب الطلبات مع بيانات الكوبون المرتبط
        $ordersPending = Order::with('coupon')
                    ->where('status', 1)
                    ->latest()
                    ->get();

        if ($ordersPending->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد طلبات مسجلة حالياً",
                "data"    => []
            ]);
        }
        

        return response()->json([
            "status" => "success", 
            "data"   => $ordersPending
        ]);
    }
    
    /**
     * عرض قائمة الطلبات الخاصة بالمستخدم الحالي
     * GET /api/delivery/order/accepted
     */
    public function accepted(Request $request)
    {
        // جلب الطلبات مع بيانات الكوبون المرتبط
        $ordersAccepted = Order::with('coupon')
                    ->where('delivery_id', $request->user()->id)
                    ->whereIn('status', [2, 3])
                    ->latest()
                    ->get();

        if ($ordersAccepted->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد طلبات مسجلة حالياً",
                "data"    => []
            ]);
        }

        return response()->json([
            "status" => "success", 
            "data"   => $ordersAccepted   
        ]);
    }

    /**
     * عرض قائمة الطلبات الخاصة بالمستخدم الحالي
     * GET /api/delivery/order/archived
     */
    public function archived(Request $request)
    {
        // جلب الطلبات مع بيانات الكوبون المرتبط
        $ordersArchived = Order::with('coupon')
                    ->where('delivery_id', $request->user()->id)
                    ->where('type', 0)
                    ->where('status', 4)
                    ->latest()
                    ->get();

        if ($ordersArchived->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد طلبات مسجلة حالياً",
                "data"    => []
            ]);
        }
       

        return response()->json([
            "status" => "success", 
            "data"   => $ordersArchived   
        ]);
    }

    /**
     * عرض تفاصيل ومحتويات طلب محدد
     * GET /api/delivery/orders/{order}/details
     */
    public function show(Order $order)
    {
        // 1. تحميل علاقة العنوان والكوبون للطلب المستلم
        $order->load(['address', 'coupon']);

        // 2. جلب عناصر السلة المرتبطة بهذا الطلب
        $cartAll = Cart::with("item")
                    ->where("order_id", $order->id)
                    ->get();

        // 3. معالجة البيانات عبر دالة الموديل الموحدة
        $cartItems = Cart::formatItems($cartAll);

        // 4. إرجاع الاستجابة ببيانات الطلب والسلة
        return response()->json([
            "status"       => "success",
            "cart_items"   => $cartItems,
            "order_info"   => $order,
        ]);
    }

    /**
     * قبول طلب معين
     * POST /api/delivery/orders/{order}/approve
     */ 
    public function approve(Order $order, FcmService $fcmService)
    {
        // 1. التحقق من حالة الطلب
        if ($order->status > 1) {
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، الطلب مقبول أو معالج مسبقاً"
            ], 422);
        } 

        $deliveryId = request()->user()->id;
        $userId     = $order->user_id;

        // 2. تحديث الطلب
        $order->update([
            "status"      => 2,
            "delivery_id" => $deliveryId,
        ]);

        // 3. إنشاء الإشعار في قاعدة البيانات
        Notification::create([
            "title"   => "تم قبول طلبك، من المندوب",
            "body"    => "تم قبول طلبك من المندوب، ورقم الطلب #{$order->id}",
            "user_id" => $userId,
        ]);

        // 4. إرسال الإشعارات اللحظية
        $fcmService->sendToUser(
            $userId,
            "تم قبول طلبك، من المندوب",
            "تم قبول طلبك من المندوب، ورقم الطلب #{$order->id}",
            [
                'type'     => 'orders',
                'order_id' => (string) $order->id,
            ]
        );

        $fcmService->sendToTopic(
            "delivery",
            "تم قبول طلب جديد",
            "تم قبول طلب جديد من المندوب، ورقم الطلب #{$order->id}",
            [
                'type'     => 'null',
                'order_id' => (string) $order->id,
            ]
        );

        $fcmService->sendToTopic(
            "service",
            "تم قبول طلب جديد",
            "تم قبول طلب جديد من المندوب، ورقم الطلب #{$order->id}",
            [
                'type'     => 'orders',
                'order_id' => (string) $order->id,
            ]
        );

        return response()->json([
            "status"  => "success",
            "message" => "تم قبول الطلب بنجاح",
            "data"    => $order,
        ]);
    }

    /**
     * تم استلام الطلب من قبل المندوب
     * POST /api/delivery/orders/{order}/done
     */ 
    public function done(Order $order, FcmService $fcmService)
    {
        // 1. التحقق من حالة الطلب
        if ($order->status > 4) {
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، الطلب تم توصيله مسبقاً"
            ], 422);
        } 

        $deliveryId = request()->user()->id;
        $userId     = $order->user_id;

        // 2. تحديث الطلب
        $order->update([
            "status"      => 4,
            "delivery_id" => $deliveryId,
        ]);

        // 3. إنشاء الإشعار في قاعدة البيانات
        Notification::create([
            "title"   => "تم استلام الطلب",
            "body"    => "تم استلام طلبك ورقم الطلب #{$order->id}",
            "user_id" => $userId,
        ]);

        // 4. إرسال الإشعارات اللحظية
        $fcmService->sendToUser(
            $userId,
            "تم استلام الطلب",
            "تم استلام طلبك ورقم الطلب #{$order->id}",
            [
                'type'     => 'orders',
                'order_id' => (string) $order->id,
            ]
        );

        $fcmService->sendToTopic(
            "delivery",
            "تم استلام الطلب",
            "تم استلام طلبك ورقم الطلب #{$order->id}",
            [
                'type'     => 'null',
                'order_id' => (string) $order->id,
            ]
        );

        $fcmService->sendToTopic(
            "service",
            "تم استلام الطلب",
            "تم استلام طلبك ورقم الطلب #{$order->id}",
            [
                'type'     => 'orders',
                'order_id' => (string) $order->id,
            ]
        );

        return response()->json([
            "status"  => "success",
            "message" => "تم استلام الطلب بنجاح",
            "data"    => $order,
        ]);
    }
}