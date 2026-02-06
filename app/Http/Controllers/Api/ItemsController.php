<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Items; 
use App\Models\Favorite; 


class ItemsController extends Controller
{
    public function viewitems(Request $request)
    {
        $request->validate([
            "categoriesid" => "required",
            "usersid"      => "required", 
        ]);

        // جلب جميع المنتجات التي تنتمي لهذا القسم
        $items = Items::where("items_categoriesID", $request->categoriesid)->get();

        

        if ($items->isEmpty()) {
            return response()->json(["status" => "failure", "errorKey" => "noData"]);
        }

        $items->map(function($item) use ($request) {
            $isFavorite = Favorite::where('favorites_usersID', $request->usersid)
            ->where('favorites_itemsID', $item->items_id) 
            ->first();

            $item->favorite = $isFavorite ? "1" : "0";
        });

        return response()->json([
            "status" => "success", 
            "data"   => $items 
        ]);
    }

    public function search(Request $request)
    {
        $request->validate([
            "search" => "required"
        ]);

        $items = Items::search($request->search)
        ->with('category')
        ->get(); 

        if ($items->isEmpty()) {
            return response()->json([
                "status" => "failure", 
            ]);
        }

        return response()->json([
            "status" => "success", 
            "data"   => $items 
        ]);
    }

}
