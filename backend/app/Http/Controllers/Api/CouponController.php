<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Coupon;
use Illuminate\Http\Request;

class CouponController extends Controller
{   
    /**
     * التحقق من صلاحية الكوبون
     * GET /api/coupon/check/{name}
     */
    public function show($name)
    {
        // // البحث عن الكوبون مع التحقق من الصلاحية (التاريخ والعدد)
        // // استخدمنا "now()" للمقارنة مع تاريخ الانتهاء
        $coupon = Coupon::where("coupons_name", $name)
            ->where("coupons_expiredate", ">", now()) 
            ->where("coupons_count", ">", 0) 
            ->first();

        // // تطبيق استراتيجية الـ Early Return
        if (!$coupon) {
            return response()->json([
                "status"  => "failure",
                "message" => "الكوبون غير صالح أو انتهت صلاحيته"
            ], 404); // // نرسل 404 لأن المورد (الكوبون) غير موجود أو غير متاح
        }

        return response()->json([
            "status" => "success",
            "data"   => $coupon
        ]);
    }
}