<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Coupon;
use Illuminate\Http\Request;

class CouponController extends Controller
{   
    /**
     * التحقق من صلاحية الكوبون وجلب تفاصيله
     * POST /api/coupon/check/{name}
     */
    public function show(Request $request)
    {
        $name = $request->input('name');

        // 1. البحث عن الكوبون 
        $coupon = Coupon::where("name", $name)->first();

        // 2. التحقق من وجود الكوبون، عدده، وصلاحية تاريخه 
        if (!$coupon) {
            return response()->json([
                "status"  => "failure",
                "message" => "اسم الكوبون غير صحيح"
            ], 404);
        }
        if ($coupon->count <= 0) {
            return response()->json([
                "status"  => "failure",
                "message" => "الكوبون غير صالح، نفدت كميته"
            ], 404);
        }
        if ($coupon->isExpired()) {
            return response()->json([
                "status"  => "failure",
                "message" => "الكوبون غير صالح، انتهت صلاحيته"
            ], 404);
        }

        // 3. إرجاع بيانات الكوبون الصالح بنجاح
        return response()->json([
            "status" => "success",
            "data"   => $coupon
        ]);
    }
}