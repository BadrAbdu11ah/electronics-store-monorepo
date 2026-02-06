<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

use App\Models\Favorite;

class FavoriteController extends Controller
{
    public function favoriteView(Request $request)
    {
        $request->validate([
            "usersid" => "required",
        ]);

        // جلب جميع المفضلات مع بيانات المنتج المرتبط بكل مفضلة
        $favoriteAll = Favorite::with("item")
            ->where("favorites_usersID", $request->usersid)
            ->get();

        // التأكد من أن القائمة ليست فارغة
        if ($favoriteAll->isEmpty()) {
            return response()->json(["status" => "failure", "errorKey" => "noData"]); 
        }

        return response()->json([
            "status" => "success",
            "data" => $favoriteAll
        ]);
        

        
    }

    public function favoriteAdd(Request $request)
    {
        $request->validate([
            "usersid" => "required",
            "itemsid" => "required"
        ]);

        $favorite = Favorite::create([
            "favorites_usersID" => $request->usersid,
            "favorites_itemsID" => $request->itemsid
        ]);

        if ($favorite) {
            return response()->json([
                "status" => "success",
            ]);
        }

        return response()->json(["status" => "failure"], 500);
    }

    public function favoriteRemove(Request $request)
    {
        $request->validate([
            "usersid" => "required",
            "itemsid" => "required"
        ]);

        $favorite = Favorite::where("favorites_usersID", $request->usersid)
                            ->where("favorites_itemsID", $request->itemsid)
                            ->delete();

        if ($favorite) {
            return response()->json(["status" => "success",]);
        }

        return response()->json(["status" => "failure"], 404);
    }
}
