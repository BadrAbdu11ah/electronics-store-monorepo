<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Address;

class AddressController extends Controller
{
    /**
     * عرض جميع عناوين المستخدم
     * GET /api/address
     */
    public function index(Request $request)
    {
        $user = $request->user();
        $addresses = Address::where("addresses_usersID", $user->users_id)->get();

        if ($addresses->isEmpty()) {
            return response()->json([
                "status" => "success",
                'data' => [], 
                "message" => "لا توجد عناوين"
            ]);
        }

        return response()->json(["status" => "success", "data" => $addresses]);
    }

    /**
     * إضافة عنوان جديد
     * POST /api/address
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => "required",
            'city' => "required",
            'street' => "required",
            'lat' => "required",
            'long' => "required",
            'phone' => "required",
        ]);

        $user = $request->user();

        Address::create([
            "addresses_usersID" => $user->users_id,
            "addresses_name"    => $request->name,
            "addresses_city"    => $request->city,
            "addresses_street"  => $request->street,
            "addresses_lat"     => $request->lat,
            "addresses_long"    => $request->long,
            "addresses_phone"   => $request->phone,
        ]);

        return response()->json(["status" => "success", "message" => "تمت إضافة العنوان بنجاح"]);
    }

    /**
     * تحديث عنوان موجود
     * PUT /api/address/{address}
     */
    public function update(Request $request, Address $address)
    {
        if ($address->addresses_usersID !== $request->user()->users_id) {
            return response()->json(["status" => "failure", "message" => "غير مصرح لك"], 403);
        }

        $address->update([
            "addresses_name"   => $request->name,
            "addresses_city"   => $request->city,
            "addresses_street" => $request->street,
            "addresses_lat"    => $request->lat,
            "addresses_long"   => $request->long,
            "addresses_phone"  => $request->phone,
        ]);

        return response()->json(["status" => "success", "message" => "تم تعديل العنوان بنجاح"]);
    }

    /**
     * حذف عنوان
     * DELETE /api/address/{address}
     */
    public function destroy(Request $request, Address $address)
    {
        // // حماية أمنية: لا يمكن حذف عنوان مستخدم آخر
        if ($address->addresses_usersID !== $request->user()->users_id) {
            return response()->json(["status" => "failure", "message" => "غير مصرح لك"], 403);
        }

        $address->delete();

        return response()->json(["status" => "success", "message" => "تم الحذف بنجاح"]);
    }
}