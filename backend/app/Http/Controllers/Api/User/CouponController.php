<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Models\Coupon;
use App\Models\Cart;
use Illuminate\Http\Request;

class CouponController extends Controller
{   
    /**
     * التحقق من صلاحية الكوبون وجلب تفاصيله
     * POST /api/coupon/check
     */
    public function applyCoupon(Request $request)
    {
        $request->validate(['name' => 'required|string']);

        $user   = $request->user();
        $coupon = Coupon::where("name", $request->name)->first();

        if (!$coupon) {
            return response()->json(["status" => "failure", "message" => "اسم الكوبون غير صحيح"], 404);
        }
        if ($coupon->count <= 0) {
            return response()->json(["status" => "failure", "message" => "الكوبون غير صالح"], 400);
        }
        if ($coupon->isExpired()) {
            return response()->json(["status" => "failure", "message" => "الكوبون منتهي الصلاحية"], 400);
        }

        // ربط الـ coupon_id بجميع عناصر السلة النشطة للمستخدم
        Cart::where("user_id", $user->id)
            ->whereNull("order_id")
            ->update(['coupon_id' => $coupon->id]);

        $couponData = [
                'id'       => $coupon->id,
                'name'     => $coupon->name,
                'discount' => $coupon->discount,
            ];

        return response()->json([
            "status"  => "success",
            "message" => "تم تطبيق الكوبون بنجاح",
            "data"    => $couponData,
        ]);
    }
}