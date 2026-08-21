<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Item;
use Illuminate\Http\Request;

class CartController extends Controller
{
    /**
     * عرض محتويات السلة الحالية لحساب المستخدم
     * GET /api/cart/view
     */
    public function index(Request $request)
    {
        $user = $request->user();

        // جلب عناصر السلة مع المنتج والكوبون المربوط
        $cartAll = Cart::with(["item", "coupon"])
                    ->where("user_id", $user->id)
                    ->whereNull("order_id")
                    ->get();

        $itemsData = Cart::formatItems($cartAll);
        $subtotal  = $itemsData->sum('total_item_price');

        $discountAmount = 0.0;
        $couponData     = null;

        // قراءة الكوبون من أول عنصر في السلة (لأن الكوبون ينطبق على كامل السلة النشطة)
        $activeCoupon = $cartAll->first()?->coupon;

        if ($activeCoupon && $subtotal > 0) {
            // التحقق من صلاحيات الكوبون
            if ($activeCoupon->count > 0 && !$activeCoupon->isExpired()) {
                $discountAmount = $subtotal * (($activeCoupon->discount ?? 0) / 100);

                $couponData = [
                    'id'       => $activeCoupon->id,
                    'name'     => $activeCoupon->name,
                    'discount' => $activeCoupon->discount,
                ];
            } else {
                // إذا انتهت صلاحية الكوبون أثناء وجوده في السلة، نلغيه تلقائياً
                Cart::where('user_id', $user->id)->whereNull('order_id')->update(['coupon_id' => null]);
            }
        }

        $shippingPrice = 10.0;
        $finalTotal    = max(0, ($subtotal - $discountAmount) + $shippingPrice);

        return response()->json([
            "status"          => "success",
            "items"           => $itemsData, 
            "subtotal"        => round($subtotal, 2),
            "coupon"          => $couponData,
            "discount_amount" => round($discountAmount, 2),
            "shipping_price"  => round($shippingPrice, 2),
            "total_price"     => round($finalTotal, 2), 
            "total_quantity"  => $cartAll->count()         
        ]);
    }

    /**
     * إضافة منتج للسلة (زيادة الكمية بمقدار قطعة واحدة)
     * POST /api/cart/add
     */
    public function store(Request $request)
    {
        $user = $request->user();
        
        $itemId = $request->input('item_id');

        if (!$itemId) {
            return response()->json(["status" => "failure", "message" => "حقل item_id مطلوب"], 400);
        }

        if (!Item::where('id', $itemId)->exists()) {
            return response()->json(["status" => "failure", "message" => "المنتج غير موجود"], 404);
        }

        Cart::create([
            "user_id"  => $user->id,
            "item_id"  => $itemId,
            "order_id" => null 
        ]);

        return response()->json(["status" => "success", "message" => "تم إضافة المنتج للسلة بنجاح"]);
    }

    /**
     * حذف قطعة واحدة فقط من المنتج من السلة (تقليل الكمية)
     * DELETE /api/cart/remove/{id}
     */
    public function destroy(Request $request, $itemId)
    {
        $user = $request->user();

        // // تم تصحيح المتغير هنا من $id إلى $itemId
        $deleted = Cart::where("user_id", $user->id)
                    ->where("item_id", $itemId) 
                    ->whereNull("order_id")
                    ->limit(1)
                    ->delete();

        if (!$deleted) {
           return response()->json(["status" => "failure", "message" => "العنصر غير موجود بالسلة"], 404); 
        }

        return response()->json(["status" => "success", "message" => "تم تقليل الكمية بنجاح"]);
    }

    /**
     * حذف المنتج كلياً من السلة
     * DELETE /api/cart/delete/{id}
     */
    public function delete(Request $request, $itemId)
    {
        $user = $request->user();

        $deleted = Cart::where("user_id", $user->id)
                    ->where("item_id", $itemId)
                    ->whereNull("order_id")
                    ->delete(); 

        if (!$deleted) {
            return response()->json(["status" => "failure", "message" => "العنصر غير موجود بالسلة"], 404); 
        }

        return response()->json(["status" => "success", "message" => "تم حذف المنتج بنجاح من السلة"]);
    }

    /**
     * الحصول على عدد القطع المضافة لمنتج محدد بالسلة وتفاصيله
     * GET /api/cart/count/{id}
     */
    public function getCountItems(Request $request, $itemId)
    {
        $user = $request->user();

        $countCart = Cart::where("user_id", $user->id)
                        ->where("item_id", $itemId)
                        ->whereNull("order_id")
                        ->count();

        $item = Item::find($itemId);

        if (!$item) {
            return response()->json(["status" => "failure", "message" => "المنتج غير موجود"], 404);
        }

        return response()->json([
            "status" => "success", 
            "count"  => $countCart,
            "data"   => $item
        ]);
    }
}