<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Categories;
use App\Models\Items;

class HomeController extends Controller
{
    /**
     * عرض بيانات الصفحة الرئيسية
     * GET /api/home
     */
    public function index(Request $request)
    {
        // 1. جلب الأقسام
        $categories = Categories::all();

        // 2. جلب المنتجات التي تحتوي على خصم (العروض)
        // latest() لترتيب أحدث العروض أولاً
        $items = Items::where("items_discount", ">", 0)->latest()->get();

        // 3. التحقق من وجود بيانات
        if ($categories->isEmpty() && $items->isEmpty()) {
            return response()->json([
                "status" => "failure", 
                "message" => "لا توجد بيانات حالياً"
            ], 404);
        }

        return response()->json([
            "status" => "success", 
            "categories" => $categories,
            "items" => $items
        ]);
    }
}