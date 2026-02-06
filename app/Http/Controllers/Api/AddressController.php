<?php
namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;

use App\Models\Address;
use Illuminate\Http\Request;

class AddressController extends Controller
{
    // إضافة عنوان جديد
    public function add(Request $request)
    {
        $request->validate([
            "usersid" => "required",
            "name" => "required",
            "city"    => "required",
            "street"  => "required",
            "lat"     => "required",
            "long"    => "required",
            "phone"   => "required",
        ]);

        $address = Address::create([
            'addresses_usersID' => $request->usersid,
            'addresses_name' => $request->name,
            'addresses_city'    => $request->city,
            'addresses_street'  => $request->street,
            'addresses_lat'     => $request->lat,
            'addresses_long'    => $request->long,
            'addresses_phone'   => $request->phone,
        ]);

        if (!$address) {
            return response()->json(["status" => "failure"], 500);
        }
        return response()->json(["status" => "success"]);
    }

    // تعديل عنوان موجود
    public function edit(Request $request)
    {
        $request->validate([
            "addressesid" => "required",
            "name"        => "required",
            "city"        => "required",
            "street"      => "required",
            "lat"         => "required",
            "long"        => "required",
            "phone"       => "required",
        ]);

        $address = Address::where("addresses_id", $request->addressesid)->first();

        if (!$address) {
            return response()->json(["status" => "failure", "message" => "Address not found"], 404);
        }
        $address->update([
                'addresses_name'    => $request->name,
                'addresses_city'    => $request->city,
                'addresses_street'  => $request->street,
                'addresses_lat'     => $request->lat,
                'addresses_long'    => $request->long,
                'addresses_phone'   => $request->phone,
            ]);
        return response()->json(["status" => "success"]);
    }

    // حذف عنوان
    public function remove(Request $request)
    {
        $request->validate([
            "addressesid" => "required",
        ]);

        $address = Address::where("addresses_id", $request->addressesid)->first();

        if (!$address) {
            return response()->json(["status" => "failure"], 404);  
        }
        
        $address->delete();
        return response()->json(["status" => "success"]);

        
    }

    // عرض العناوين الخاصة بمستخدم معين
    public function view(Request $request)
    {
        $request->validate([
            "usersid" => "required",
        ]);

        $address = Address::where("addresses_usersID", $request->usersid)->get();

        if ($address->isEmpty()) {
            return response()->json(["status" => "failure", "message" => "No addresses found"]);
        }
        return response()->json(["status" => "success", "data" => $address]);
    }
}
