<?php

namespace App\Http\Controllers\Api;

use App\Services\FcmService;
use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Order;
use App\Models\Notification;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    /**
     * عرض قائمة الطلبات الخاصة بالمستخدم الحالي
     * GET /api/admin/order/view
     */
    public function index(Request $request)
    {
        // جلب الطلبات مع بيانات الكوبون المرتبط
        $orders = Order::with('coupon')->latest()->get();

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
     * قبول طلب معين وإرسال إشعار للمستخدم
     * PUT /api/admin/order/aprove
     */
    public function aprove(Request $request, FcmService $fcmService)
    {
        // // 1. التحقق من البيانات المدخلة
        $request->validate([
            'userId'  => "required|integer", 
            'orderId' => "required|integer", 
        ]);
        
        $userId  = $request->userId;
        $orderId = $request->orderId;

        // // 2. البحث عن المستخدم والطلب
        $user = User::find($userId);

        if (!$user) {
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، المستخدم غير موجود"
            ], 404);
        }

        $order = $user->orders()->find($orderId);

        if (!$order) {
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، الطلب غير موجود أو غير مصرح لك"
            ], 404);
        }

        // // 3. فحص حالة الطلب الحالية
        if ($order->status == 2 || $order->status == 3) {
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، هذا الطلب قيد التنفيذ بالفعل"
            ], 422);
        }

        if ($order->status == 1) {
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، هذا الطلب تم رفضه بالفعل"
            ], 422);
        }

        // // 4. تحديث حالة الطلب
        $order->status = 2;
        $order->save();

        // // 5. حفظ الإشعار
        $notification = Notification::create([
            "title"    => "تم قبول طلبك",
            "body"     => "تمت الموافقة على طلبك رقم #{$order->id} وهو الآن قيد التنفيذ",
            "user_id"  => $userId,
        ]);

        // // 6. استدعاء الخدمة وإرسال الإشعار
        $fcmService->sendToUser(
            $userId,
            "تم قبول طلبك",
            "تمت الموافقة على طلبك رقم #{$order->id} وهو الآن قيد التنفيذ",
            [
                'type'     => 'orders',
                'order_id' => (string) $order->id,
            ]
        );

        // // 7. إرجاع الرد النهائي
        return response()->json([
            "status"  => "success",
            "message" => "تم قبول الطلب بنجاح وتم إرسال الإشعار",
            "order"   => $order,
            "notification"   => $notification,
        ]);
    }
    /**
     * رفض طلب معين
     * PUT /api/admin/order/reject
     */
    public function reject(Request $request, FcmService $fcmService)
    {
        $request->validate([
            'userId'  => "required|integer", 
            'orderId' => "required|integer", 
        ]);
        
        $userId    = $request->userId;
        $orderId   = $request->orderId;

        $order = User::find($userId)->orders()->find($orderId);

        if (!$order) {
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، الطلب غير موجود أو غير مصرح لك"
            ], 404);
        }

        if($order->status == 2 || $order->status == 3){
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، هذا الطلب قيد التنفيذ بالفعل"
            ], 422);
        }

        if($order->status == 1){
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، هذا الطلب تم رفضه بالفعل"
            ], 422);
        }

        $order->status = 1;
        $order->save();

        $notification = Notification::create([
            "title"    => "تم رفض طلبك",
            "body"     => "تم رفض طلبك رقم #{$order->id}",
            "user_id"  => $userId,
        ]);

        $fcmService->sendToUser(
            $userId,
            "تم رفض طلبك",
            "تم رفض  طلبك رقم #{$order->id}",
            [
                'type'     => 'orders',
                'order_id' => (string) $order->id,
            ]
        );

        return response()->json([
            "status"  => "success",
            "message" => "تم رفض الطلب بنجاح",
            "data"    => $order,
        ]);
    }
    /**
     * رفض طلب معين
     * PUT /api/admin/order/done
     */
    public function done(Request $request, FcmService $fcmService)
    {
        $request->validate([
            'userId'  => "required|integer", 
            'orderId' => "required|integer", 
        ]);
        
        $userId    = $request->userId;
        $orderId   = $request->orderId;

        $order = User::find($userId)->orders()->find($orderId);

        if (!$order) {
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، الطلب غير موجود أو غير مصرح لك"
            ], 404);
        }

        if($order->status == 2 || $order->status == 3){
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، هذا الطلب قيد التنفيذ بالفعل"
            ], 422);
        }

        if($order->status == 5 || $order->status == 1){
            return response()->json([
                "status"  => "failure", 
                "message" => "عذراً، هذا الطلب تم إنجازه بالفعل"
            ], 422);
        }

        $order->status = 5;
        $order->save();
        
        $notification = Notification::create([
            "title"    => "تم الاستلام",
            "body"     => "تم استلام طلب رقم #{$order->id} بنجاح",
            "user_id"  => $userId,
        ]);

        $fcmService->sendToUser(
            $userId,
            "تم الاستلام",
            "تم استلام طلب رقم #{$order->id} بنجاح",
            [ 
                'type'     => 'orders',
                'order_id' => (string) $order->id,
            ]
        );

        return response()->json([
            "status"  => "success",
            "message" => "تم الاستلام بنجاح",
            "data"    => $order,
            "notification"    => $notification,
        ]);
    }
}