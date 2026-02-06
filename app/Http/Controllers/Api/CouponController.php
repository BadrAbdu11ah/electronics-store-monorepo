<?php

namespace App\Http\Controllers\Api;

use App\Models\Coupon;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CouponController extends Controller
{   

    public function checkCoupon(Request $request)
    {
        $request->validate([
            "couponsname" => "required",
        ]);


        $now = now();

        $coupon = Coupon::where("coupons_name", $request->couponsname)
            ->where("coupons_expiredate", ">", $now) 
            ->where("coupons_count", ">", 0) 
            ->first();

        if ($coupon) {
            return response()->json([
                "status" => "success",
                "data"   => $coupon
            ]);
        } else {
            return response()->json([
                "status" => "failure",
                "message" => "الكوبون غير صالح أو انتهت صلاحيته"
            ]);
        }
    }
}
