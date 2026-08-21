<?php

namespace App\Http\Controllers\Api\Admin\Order;

use App\Services\FcmService;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Order;
use App\Models\Cart;
use App\Models\Notification;
use Illuminate\Http\Request;

class AdminOrderController extends Controller
{
    // 0 => pending => ينتظر موافقة الآدمن
    // 1 => approved_by_admin => تم قبول الطلب من قبل الآدمن
    // 2 => assigned_to_delivery => تم قبول الطلب من قبل المندوب
    // 3 => on_the_way => على الطريق
    // 4 => received => تم الاستلام
    // 5 => cancelled_by_admin => تم الإلغاء من قبل الآدمن

    /**
     * عرض قائمة الطلبات قيد الانتظار
     * GET /api/admin/orders/pending
     */
    public function pending()
    {
        // // جلب الطلبات قيد الانتظار مع بيانات الكوبون
        $ordersPending = Order::with('coupon')
                    ->where('status', 0)
                    ->latest()
                    ->get();

        if ($ordersPending->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد طلبات مسجلة حالياً",
                "data"    => []
            ]);
        }

        // // إرجاع استجابة نجاح مع البيانات المستلمة
        return response()->json([
            "status" => "success", 
            "data"   => $ordersPending
        ], 200);
    }

    /**
     * عرض قائمة الطلبات المقبولة والتي قيد التنفيذ
     * GET /api/admin/orders/accepted
     */
    public function accepted()
    {
        // // جلب جميع الطلبات المقبولة والجاري توصيلها
        $ordersAccepted = Order::with('coupon')
                    ->whereIn('status', [1, 2, 3])
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
        ], 200);
    }

    /**
     * عرض أرشيف الطلبات المكتملة أو الملغاة
     * GET /api/admin/orders/archived
     */
    public function archived()
    {
        // // جلب الطلبات المستلمة (4) أو الملغاة (5)
        $ordersArchived = Order::with('coupon')
                    ->whereIn('status', [4, 5])
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
        ], 200);
    }

    /**
     * عرض تفاصيل ومحتويات طلب محدد
     * GET /api/admin/order/{order}/details/
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
     * قبول طلب معين وإرسال إشعار للمستخدم
     * POST /api/admin/orders/{order}/approve
     */
    public function approve(Request $request, Order $order, FcmService $fcmService)
    {
        // // التحقق مما إذا كان الطلب مقبولة حالته مسبقاً
        if (in_array($order->status, [1, 2, 3, 4])) {
            // // إرجاع رسالة تنبيه
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، تم قبول هذا الطلب مسبقاً"
            ], 422);
        }

        // // تحديد حالة الطلب الجديدة بناءً على نوعه
        $order->status = ($order->type == 1) ? 4 : 1;
        // // حفظ التحديث
        $order->save();

        // // حفظ الإشعار في قاعدة البيانات
        $notification = Notification::create([
            "title"   => "تم قبول طلبك",
            "body"    => "تمت الموافقة على طلبك رقم #{$order->id} وهو الآن قيد التنفيذ",
            "user_id" => $order->user_id,
        ]);

        // // إرسال الإشعار للمستخدم عبر FCM
        $fcmService->sendToUser(
            $order->user_id,
            "تم قبول طلبك",
            "تمت الموافقة على طلبك رقم #{$order->id} وهو الآن قيد التنفيذ",
            [
                'type'     => 'orders',
                'order_id' => (string) $order->id,
            ]
        );

        // // إرجاع استجابة النجاح
        return response()->json([
            "status"       => "success",
            "message"      => "تم قبول الطلب بنجاح وتم إرسال الإشعار",
            "order"        => $order,
            "notification" => $notification,
        ], 200);
    }

    /**
     * رفض أو إلغاء طلب معين وإرسال إشعار للمستخدم
     * POST /api/admin/orders/{order}/reject
     */
    public function reject(Request $request, Order $order, FcmService $fcmService)
    {
        // // التحقق مما إذا كان الطلب ملغياً بالفعل
        if ($order->status == 5) {
            // // إرجاع تنبيه
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، هذا الطلب ملغى بالفعل"
            ], 422);
        }

        // // تعيين حالة الطلب إلى ملغى من الأدمن (5)
        $order->status = 5;
        // // حفظ التحديث
        $order->save();

        // // حفظ إشعار الإلغاء في قاعدة البيانات
        $notification = Notification::create([
            "title"   => "تم إلغاء طلبك",
            "body"    => "عذراً، تم إلغاء طلبك رقم #{$order->id} من قبل الإدارة",
            "user_id" => $order->user_id,
        ]);

        // // إرسال إشعار الإلغاء للمستخدم
        $fcmService->sendToUser(
            $order->user_id,
            "تم إلغاء طلبك",
            "عذراً، تم إلغاء طلبك رقم #{$order->id} من قبل الإدارة",
            [
                'type'     => 'orders',
                'order_id' => (string) $order->id,
            ]
        );

        // // إرجاع استجابة النجاح
        return response()->json([
            "status"       => "success",
            "message"      => "تم إلغاء الطلب بنجاح وتم إشعار المستخدم",
            "order"        => $order,
            "notification" => $notification,
        ], 200);
    }
}