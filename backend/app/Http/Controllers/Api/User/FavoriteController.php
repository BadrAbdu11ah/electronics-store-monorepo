<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Item;
use App\Models\Favorite;

class FavoriteController extends Controller
{
    /**
     * عرض جميع المنتجات المفضلة للمستخدم الحالي
     * GET /api/favorite/view
     */
    public function index(Request $request)
    {
        $favorites = $request->user()->favoriteItems()->get();

        if ($favorites->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "قائمة المفضلة فارغة",
                "data"    => []
            ]);
        }

        return response()->json([
            "status" => "success", 
            "data"   => $favorites
        ]);
    }

    /**
     * إضافة منتج للمفضلة 
     * POST /api/favorite/add
     */
    public function store(Request $request)
    {
        $user = $request->user();

        $itemId = $request->input('item_id');

        if (!$itemId) {
            return response()->json(["status" => "failure", "message" => "حقل item_id مطلوب"], 400);
        }

        // التحقق من وجود المنتج 
        if (!Item::where('id', $itemId)->exists()) {
            return response()->json(["status" => "failure", "message" => "المنتج غير موجود"], 404);
        }

        // فحص التكرار ضمن نطاق منتجات المستخدم الحالي فقط
        $exists = $user->favorites()->where('item_id', $itemId)->exists();

        if ($exists) {
            return response()->json(["status" => "failure", "message" => "المنتج موجود مسبقاً في المفضلة"]);
        }

        $user->favorites()->create([
            "item_id" => $itemId
        ]);

        return response()->json([
            "status"  => "success", 
            "message" => "تمت إضافة المنتج للمفضلة بنجاح"
        ]);
    }

    /**
     * حذف منتج محدد من المفضلة
     * POST /api/favorite/remove/{itemId}
     */
    public function destroy(Request $request, $itemId)
    {
        $user = $request->user();

        $favorite = $user->favorites()->where('item_id', $itemId)->first();

        if (!$favorite) {
            return response()->json([
                "status"  => "failure", 
                "message" => "العنصر غير موجود في المفضلة أو غير مصرح بحذفه"
            ], 404);
        }

        $favorite->delete();

        return response()->json([
            "status"  => "success", 
            "message" => "تم حذف المنتج من المفضلة بنجاح"
        ]);
    }
}