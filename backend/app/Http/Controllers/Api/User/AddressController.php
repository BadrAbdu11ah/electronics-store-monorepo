<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Address;

class AddressController extends Controller
{
    /**
     * عرض جميع عناوين المستخدم المسجل حالياً
     * GET /api/address/view
     */
    public function index(Request $request)
    {
        $addresses = $request->user()->addresses;

        if ($addresses->isEmpty()) {
            return response()->json([
                "status"  => "success", 
                "message" => "لا توجد عناوين مسجلة",
                "data"    => []
            ]);
        }

        return response()->json([
            "status" => "success", 
            "data"   => $addresses
        ]);
    }

    /**
     * إضافة عنوان جديد للمستخدم الحالي
     * POST /api/address/add
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'   => "required|string|max:255",
            'city'   => "required|string",
            'street' => "required|string",
            'lat'    => "required|numeric",
            'long'   => "required|numeric",
            'phone'  => "required|string",
        ]);

        $newAddress = $request->user()->addresses()->create([
            "name"   => $request->name,
            "city"   => $request->city,
            "street" => $request->street,
            "lat"    => $request->lat,
            "long"   => $request->long,
            "phone"  => $request->phone,
        ]);

        return response()->json([
            "status"  => "success", 
            "message" => "تمت إضافة العنوان بنجاح",
            "data"    => $newAddress 
        ], 201);
    }

    /**
     * تحديث عنوان موجود
     * PUT /api/address/edit/{id}
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'name'   => "required|string|max:255",
            'city'   => "required|string",
            'street' => "required|string",
            'lat'    => "required|numeric",
            'long'   => "required|numeric",
            'phone'  => "required|string",
        ]);

        $address = $request->user()->addresses()->find($id);

        if (!$address) {
            return response()->json([
                "status"  => "failure", 
                "message" => "العنوان غير موجود أو غير مصرح لك بالتعديل"
            ], 404);
        }

        $address->update([
            "name"   => $request->name,
            "city"   => $request->city,
            "street" => $request->street,
            "lat"    => $request->lat,
            "long"   => $request->long,
            "phone"  => $request->phone,
        ]);

        return response()->json([
            "status"  => "success", 
            "message" => "تم تعديل العنوان بنجاح",
            "data"    => $address
        ]);
    }

    /**
     * حذف عنوان
     * DELETE /api/address/remove/{id}
     */
    public function destroy(Request $request, $id)
    {
        $address = $request->user()->addresses()->find($id);

        if (!$address) {
            return response()->json([
                "status"  => "failure", 
                "message" => "العنوان غير موجود أو غير مصرح لك بالحذف"
            ], 404);
        }

        $address->delete();

        return response()->json([
            "status"  => "success", 
            "message" => "تم حذف العنوان بنجاح"
        ]);
    }
}