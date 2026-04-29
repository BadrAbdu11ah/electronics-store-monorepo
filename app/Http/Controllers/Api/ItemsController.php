<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Items;

class ItemsController extends Controller
{
    /**
     * جلب منتجات قسم محدد
     * GET /api/items/category/{id}
     */
    public function index(Request $request, $id)
    {
        // // جلب المنتجات التابعة للقسم مع دمج حالة المفضلة للمستخدم الحالي
        $user = $request->user();
        
        $items = Items::where("items_categories", $id)->get();

        if ($items->isEmpty()) {
            return response()->json(["status" => "failure", "message" => "لا توجد منتجات في هذا القسم"]);
        }

        return response()->json([
            "status" => "success",
            "data"   => $items
        ]);
    }

    /**
     * البحث عن المنتجات
     * POST /api/items/search
     */
    public function search(Request $request)
    {
        $request->validate(["search" => "required"]);
        
        $search = $request->search;
        
        $items = Items::where("items_name", "LIKE", "%$search%")
                    ->orWhere("items_name_ar", "LIKE", "%$search%")
                    ->get();

        return response()->json([
            "status" => "success",
            "data"   => $items
        ]);
    }
}