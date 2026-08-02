<?php

namespace App\Http\Controllers\Api;

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

        // // جلب عناصر السلة النشطة مع بيانات المنتج المرتبط
        $cartAll = Cart::with("item")
                    ->where("user_id", $user->id)
                    ->whereNull("order_id")
                    ->get();

        // // معالجة البيانات لحساب الكميات والأسعار 
        $itemsData = $cartAll->groupBy('item_id')->map(function ($group) {
            $cartItem   = $group->first();
            $item       = $cartItem->item;
            
            $unitPrice  = $item->discounted_price; 
            $countItems = $group->count();
            
            return [
                'id'               => $cartItem->id, 
                'item_id'          => $item->id,
                'count_items'      => $countItems,
                'item_price'       => round($unitPrice, 2),
                'total_item_price' => round($countItems * $unitPrice, 2), 
                'item'             => $item, 
            ];
        })->values();

        // // حساب الإجمالي الكلي لجميع المنتجات في السلة
        $totalPrice = $itemsData->sum('total_item_price');

        return response()->json([
            "status"         => "success",
            "items"          => $itemsData, 
            "total_price"    => round($totalPrice, 2), 
            "total_quantity" => $cartAll->count()        
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