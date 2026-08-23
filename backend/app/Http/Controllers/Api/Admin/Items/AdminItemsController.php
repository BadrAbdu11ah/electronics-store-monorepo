<?php

namespace App\Http\Controllers\Api\Admin\Items;

use App\Http\Controllers\Controller;
use App\Models\Item; 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class AdminItemsController extends Controller
{
    /**
     * عرض جميع المنتجات
     * GET /api/admin/items/view
     */
    public function index(Request $request)
    {
        $itmes = item::with('category')->get();

        if ($itmes->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد منتجات مسجلة",
                "data"    => []
            ]);
        }

        return response()->json([
            "status" => "success", 
            "data"   => $itmes
        ]);
    }

    /**
     * إضافة منتج جديد مع حفظ الصورة
     * POST /api/admin/items/add
     */
    public function store(Request $request)
    {
        // 1. التحقق من صحة البيانات والملف المستلم
        $request->validate([
            'name'        => "required|string|max:255",
            'name_ar'     => "required|string",
            'desc'        => "required|string",
            'desc_ar'     => "required|string",
            'count'       => "required|integer",
            'active'      => "required|integer",
            'price'       => "required|numeric",
            'discount'    => "required|numeric",
            'image'       => "required|image|mimes:jpeg,png,jpg,gif,svg,webp|max:5048",
            'delivery_time' => "required|integer",
            'category_id' => "required|integer",
        ]);

        $imageName = null;

        // 2. معالجة وحفظ ملف الصورة
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '_' . uniqid() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload/items'), $imageName);
        }

        // 3. إنشاء المنتج في قاعدة البيانات
        $newItem = Item::create([
            'name'        => $request->name,
            'name_ar'     => $request->name_ar,
            'desc'        => $request->desc,
            'desc_ar'     => $request->desc_ar,
            'count'       => $request->count,
            'active'      => $request->active,
            'price'       => $request->price, 
            'discount'    => $request->discount,
            'image'       => $imageName,
            'delivery_time' => $request->delivery_time,
            'category_id' => $request->category_id, 
        ]);

        return response()->json([
            "status"  => "success", 
            "message" => "تمت إضافة المنتج بنجاح",
            "data"    => $newItem 
        ], 201);
    }

    /**
     * تحديث منتج موجود مع تعديل الصورة إن وجدت
     * POST /api/admin/items/edit/{id}
     */
    public function update(Request $request, $id)
    {
        $item = Item::find($id);

        if (!$item) {
            return response()->json([
                "status"  => "failure", 
                "message" => "المنتج غير موجود"
            ], 404);
        }

        // 1. تحديد قواعد التحقق (تطبيق فحص الصورة فقط إذا تم رفع ملف)
        $rules = [
            'name'        => "required|string|max:255",
            'name_ar'     => "required|string",
            'desc'        => "required|string",
            'desc_ar'     => "required|string",
            'count'       => "required|integer",
            'active'      => "required|integer",
            'price'       => "required|numeric",
            'discount'    => "required|numeric",
            'delivery_time' => "required|integer",
            'category_id' => "required|integer",
            'active'      => "required|integer",
        ];

        if ($request->hasFile('image')) {
            $rules['image'] = "required|image|mimes:jpeg,png,jpg,gif,svg,webp|max:5048";
        }

        $request->validate($rules);

        // جلب اسم الصورة القديم
        $imageName = $item->getRawOriginal('image');

        // 2. معالجة حفظ الصورة الجديدة إذا وجدت
        if ($request->hasFile('image')) {
            if ($imageName && File::exists(public_path('upload/items/' . $imageName))) {
                File::delete(public_path('upload/items/' . $imageName));
            }

            $image = $request->file('image');
            $imageName = time() . '_' . uniqid() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload/items'), $imageName);
        }

        // 3. تحديث البيانات
        $item->update([
            "name"        => $request->name,
            "name_ar"     => $request->name_ar,
            "desc"        => $request->desc,
            "desc_ar"     => $request->desc_ar,
            "count"       => $request->count,
            "active"      => $request->active,
            "price"       => $request->price, 
            "discount"    => $request->discount,
            "image"       => $imageName,
            "delivery_time" => $request->delivery_time,
            "category_id" => $request->category_id, 
        ]);

        return response()->json([
            "status"  => "success", 
            "message" => "تم تعديل المنتج بنجاح",
            "data"    => $item
        ]);
    }

    /**
     * حذف منتج مع حذف صورته من السيرفر
     * DELETE /api/admin/items/remove/{id}
     */
    public function destroy(Request $request, $id)
    {
        $item = Item::find($id);

        if (!$item) {
            return response()->json([
                "status"  => "failure", 
                "message" => "المنتج غير موجود"
            ], 404);
        }

        // حذف الصورة من مجلد Public قبل حذف السجل
        $imageName = $item->getRawOriginal('image');
        if ($imageName && File::exists(public_path('upload/items/' . $imageName))) {
            File::delete(public_path('upload/items/' . $imageName));
        }

        $item->delete();

        return response()->json([
            "status"  => "success", 
            "message" => "تم حذف المنتج بنجاح"
        ]);
    }
}