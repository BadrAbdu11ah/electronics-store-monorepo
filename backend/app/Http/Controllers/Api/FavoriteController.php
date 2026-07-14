<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Favorite;

class FavoriteController extends Controller
{
    public function index(Request $request)
    {
        $user = $request->user();
        $favorites = Favorite::with('item')
            ->where("favorites_usersID", $user->users_id)
            ->get();
        
        if($favorites->isEmpty()){
            return response()->json([
                "status" => "success",
                "data" => [],
                'message' => 'لا توجد بيانات في المفضلة'
            ]);
        }

        return response()->json(["status" => "success", "data" => $favorites]);
    }

    /**
     * إضافة منتج للمفضلة
     * POST /api/favorite/{items_id}
     */
    public function store(Request $request, $items_id)
    {
        $user = $request->user();

        // // التأكد أنه غير موجود مسبقاً
        $exists = Favorite::where('favorites_usersID', $user->users_id)
                          ->where('favorites_itemsID', $items_id)
                          ->exists();

        if ($exists) {
            return response()->json(["status" => "failure", "message" => "موجود مسبقاً"]);
        }

        Favorite::create([
            "favorites_usersID" => $user->users_id,
            "favorites_itemsID" => $items_id
        ]);

        return response()->json(["status" => "success", "message" => "تمت الإضافة"]);
    }

    /**
     * حذف من المفضلة
     * DELETE /api/favorite/{items_id}
     */
    public function destroy(Request $request, $items_id)
    {
        $user = $request->user();
        
        Favorite::where('favorites_usersID', $user->users_id)
                ->where('favorites_itemsID', $items_id)
                ->delete();

        return response()->json(["status" => "success", "message" => "تم الحذف"]);
    }
}