<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\Items;
use Illuminate\Http\Request;

class CartController extends Controller
{
    /**
     * عرض محتويات السلة
     * GET /api/cart
     */
    public function index(Request $request)
    {
        $user = $request->user();

        // // جلب البيانات مع علاقة المنتجات
        $cartAll = Cart::with("item")
                    ->where("carts_usersID", $user->users_id)
                    ->where("carts_ordersID", 0)
                    ->get();

        // // معالجة البيانات لحساب الكميات والأسعار باستخدام Collections
        $itemsData = $cartAll->groupBy('carts_itemsID')->map(function ($group) {
            $item       = $group->first();
            $unitPrice  = $item->item->items_price_discount; 
            $countItems = $group->count();
            
            return [
                'item'             => $item->item,
                'count_items'      => $countItems,
                'item_price'       => $unitPrice,
                'total_item_price' => $countItems * $unitPrice, 
            ];
        })->values();

        $totalPriceAll = $cartAll->sum(fn($cart) => $cart->item->items_price_discount);

        return response()->json([
            "status"     => "success",
            "data"       => $itemsData,
            "totalprice" => $totalPriceAll,
            "countall"   => $cartAll->count()
        ]);
    }

    /**
     * إضافة منتج للسلة
     * POST /api/cart/{items_id}
     */
    public function store(Request $request, $items_id)
    {
        $user = $request->user();

        // // التحقق من وجود المنتج في قاعدة البيانات
        if (!Items::where('items_id', $items_id)->exists()) {
            return response()->json(["status" => "failure", "message" => "المنتج غير موجود"], 404);
        }

        $cart = Cart::create([
            "carts_usersID"  => $user->users_id,
            "carts_itemsID"  => $items_id,
            "carts_ordersID" => 0
        ]);

        return response()->json(["status" => "success"]);
    }

    /**
     * حذف قطعة واحدة من المنتج من السلة
     * DELETE /api/cart/{items_id}
     */
    public function destroy(Request $request, $items_id)
    {
        $user = $request->user();

        // // حذف سجل واحد فقط (لتنفيذ فكرة تقليل الكمية بالواحد)
        $deleted = Cart::where("carts_usersID", $user->users_id)
                    ->where("carts_itemsID", $items_id)
                    ->where("carts_ordersID", 0)
                    ->limit(1)
                    ->delete();

        if (!$deleted) {
           return response()->json(["status" => "failure", "message" => "العنصر غير موجود بالسلة"]); 
        }

        return response()->json(["status" => "success"]);
    }

    /**
     * الحصول على عدد العناصر لمنتج محدد وتفاصيله
     * GET /api/cart/count/{items_id}
     */
    public function getCountItems(Request $request, $items_id)
    {
        $user = $request->user();

        $countCart = Cart::where("carts_usersID", $user->users_id)
                        ->where("carts_itemsID", $items_id)
                        ->where("carts_ordersID", 0)
                        ->count();

        $item = Items::find($items_id);

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