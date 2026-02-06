<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User; 
use Illuminate\Support\Facades\Hash;

class SignupController extends Controller
{
    public function signup(Request $request)
    {
        // 1. التحقق من البيانات (Validation) - بديل filterRequest
        $request->validate([
            'username' => 'required',
            'email'    => 'required|email',
            'password' => 'required|min:8',
            'phone'    => 'required',
        ]);

        // 2. فحص هل الإيميل أو الهاتف موجود مسبقاً؟
        $exists = User::where('users_email', $request->email)->exists();

        if ($exists) {
            return response()->json([
                "status" => "failure",
                "errorKey" => "emailOrPhoneExists"
            ]);
        }

        // 3. تجهيز البيانات وتشفير الباسورد
        $verfiycode = rand(10000, 99999);

        // // ربط طبقة البيانات بالمتحكم وحفظ المستخدم الجديد
        $user = User::create([
            'users_name'     => $request->username,
            'users_email'    => $request->email,
            'users_password' => Hash::make($request->password), // لارفل يستخدم تشفير Bcrypt آلياً
            'users_phone'    => $request->phone,
            'users_verfiycode' => $verfiycode,
            'users_approve'  => 0, // الحساب غير مفعل افتراضياً كما في كودك
        ]);

        if ($user) {
            // يمكن هنا تفعيل كود إرسال الإيميل لاحقاً
            return response()->json([
                "status" => "success",
            ]);
        }

        return response()->json(["status" => "failure"], 500);
    }
}
