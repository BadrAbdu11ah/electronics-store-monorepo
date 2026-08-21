<?php

namespace App\Http\Controllers\Api\Admin\Categories;

use App\Http\Controllers\Controller;
use App\Models\Category; 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class AdminCategoriesController extends Controller
{
    /**
     * عرض جميع الأقسام
     * GET /api/admin/categories/view
     */
    public function index(Request $request)
    {
        $categories = Category::all();

        if ($categories->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد أقسام مسجلة",
                "data"    => []
            ]);
        }

        return response()->json([
            "status" => "success", 
            "data"   => $categories
        ]);
    }

    /**
     * إضافة قسم جديد مع حفظ الصورة
     * POST /api/admin/categories/add
     */
    public function store(Request $request)
    {
        // 1. التحقق من صحة البيانات والملف المستلم
        $request->validate([
            'name'        => "required|string|max:255",
            'name_ar'     => "required|string",
            'description' => "required|string",
            'image'       => "nullable|mimes:svg,SVG|max:5120",
        ]);

        $imageName = null;

        // 2. معالجة وحفظ ملف الصورة
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '_' . uniqid() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload/categories'), $imageName);
        }

        // 3. إنشاء القسم في قاعدة البيانات
        $newCategory = Category::create([
            "name"        => $request->name,
            "name_ar"     => $request->name_ar,
            "description" => $request->description,
            "image"       => $imageName, 
        ]);

        return response()->json([
            "status"  => "success", 
            "message" => "تمت إضافة القسم بنجاح",
            "data"    => $newCategory 
        ], 201);
    }

    /**
     * تحديث قسم موجود مع تعديل الصورة إن وجدت
     * POST /api/admin/categories/edit/{id}
     */
   public function update(Request $request, $id)
    {
        $category = Category::find($id);

        if (!$category) {
            return response()->json([
                "status"  => "failure", 
                "message" => "القسم غير موجود"
            ], 404);
        }

        // 1. تحديد قواعد التحقق (تطبيق فحص الصورة فقط إذا تم رفع ملف)
        $rules = [
            'name'        => "required|string|max:255",
            'name_ar'     => "required|string",
            'description' => "required|string",
        ];

        if ($request->hasFile('image')) {
            $rules['image'] = "file|mimes:svg,svg|max:5120";
        }

        $request->validate($rules);

        // جلب اسم الصورة القديم
        $imageName = $category->getRawOriginal('image');

        // 2. معالجة حفظ الصورة الجديدة إذا وجدت
        if ($request->hasFile('image')) {
            if ($imageName && File::exists(public_path('upload/categories/' . $imageName))) {
                File::delete(public_path('upload/categories/' . $imageName));
            }

            $image = $request->file('image');
            $imageName = time() . '_' . uniqid() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('upload/categories'), $imageName);
        }

        // 3. تحديث البيانات
        $category->update([
            "name"        => $request->name,
            "name_ar"     => $request->name_ar,
            "description" => $request->description,
            "image"       => $imageName,
        ]);

        return response()->json([
            "status"  => "success", 
            "message" => "تم تعديل القسم بنجاح",
            "data"    => $category
        ]);
    }
    
    /**
     * حذف قسم مع حذف صورته من السيرفر
     * DELETE /api/admin/categories/remove/{id}
     */
    public function destroy(Request $request, $id)
    {
        $category = Category::find($id);

        if (!$category) {
            return response()->json([
                "status"  => "failure", 
                "message" => "القسم غير موجود"
            ], 404);
        }

        // حذف الصورة من مجلد Public قبل حذف السجل
        $imageName = $category->getRawOriginal('image');
        if ($imageName && File::exists(public_path('upload/categories/' . $imageName))) {
            File::delete(public_path('upload/categories/' . $imageName));
        }

        $category->delete();

        return response()->json([
            "status"  => "success", 
            "message" => "تم حذف القسم بنجاح"
        ]);
    }
}