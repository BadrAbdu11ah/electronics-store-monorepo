<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User; 
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class AuthController extends Controller
{
    // --- [ 1. تسجيل الدخول - Login ] ---
    public function login(Request $request)
    {
        $request->validate(['email' => 'required|email', 'password' => 'required']);

        $user = User::where('users_email', $request->email)->first();

        // // 1. التحقق من وجود الحساب
        if (!$user) {
            return response()->json(['status' => 'failure', 'errorKey' => 'emailNotFound']);
        }

        // // 2. التحقق من تفعيل الحساب
        if ($user->users_approve == 0) {
            return response()->json(['status' => 'failure', 'errorKey' => 'accountNotActive']);
        }

        // // 3. التحقق من صحة كلمة المرور
        if (!Hash::check($request->password, $user->users_password)) {
            return response()->json(['status' => 'failure', 'errorKey' => 'passwordIncorrect']);
        }

        // // 4. توليد التوكن وحفظه مشفراً في قاعدة البيانات
        $plainToken = Str::random(60);
        $user->api_token = hash('sha256', $plainToken);
        $user->save();

        return response()->json([
            "status" => "success",
            "token"  => $plainToken, 
            "data"   => $user
        ]); 
    }

    // --- [ 2. تسجيل مستخدم جديد - Signup ] ---
    public function signup(Request $request)
    {
        $request->validate([
            'username' => 'required',
            'email'    => 'required|email',
            'password' => 'required|min:8',
            'phone'    => 'required',
        ]);

        // // 1. التحقق من تكرار البيانات
        if (User::where('users_email', $request->email)->exists()) {
            return response()->json(["status" => "failure", "errorKey" => "emailOrPhoneExists"]);
        }

        // // 2. إنشاء المستخدم الجديد
        $verfiycode = rand(10000, 99999);
        $user = User::create([
            'users_name'       => $request->username,
            'users_email'      => $request->email,
            'users_password'   => Hash::make($request->password), 
            'users_phone'      => $request->phone,
            'users_verfiycode' => $verfiycode,
            'users_approve'    => 0,
            'role'             => 'user',
        ]);

        if (!$user) return response()->json(["status" => "failure"], 500);

        return response()->json(["status" => "success", "data" => ["email" => $user->users_email]]);
    }

    // --- [ 3. فحص الإيميل لنسيان كلمة المرور - Forget Password ] ---
    public function checkEmail(Request $request)
    {
        $request->validate(['email' => 'required|email']);

        $user = User::where('users_email', $request->email)->first(); 

        if (!$user) {
            return response()->json(["status" => "failure", "errorKey" => "emailNotFound"]); 
        }

        $newCode = rand(10000, 99999);
        $user->update(['users_verfiycode' => $newCode]);

        return response()->json([
            "status"     => "success",
            "data"       => $user,
            "verifycode" => $newCode 
        ]);
    }

    // --- [ 4. التحقق من رمز التفعيل - Verify Code ] ---
    public function verifyCode(Request $request)
    {
        $request->validate(['email' => 'required|email', 'verifycode' => 'required']);

        $user = User::where('users_email', $request->email)
                    ->where('users_verfiycode', $request->verifycode)
                    ->first(); 

        if (!$user) {
            return response()->json(["status" => "failure", "errorKey" => "verificationCodeIncorrect"]);
        }

        $user->update(['users_approve' => 1, 'users_verfiycode' => 0]);

        return response()->json(["status" => "success"]);
    }

    // --- [ 5. إعادة تعيين كلمة المرور - Reset Password ] ---
    public function resetPassword(Request $request)
    {
        $request->validate(['email' => 'required|email', 'password' => 'required|min:8']);

        $user = User::where("users_email", $request->email)->first();

        if (!$user) {
            return response()->json(["status" => "failure", "errorKey" => "emailNotFound"]);
        }

        $user->update(["users_password" => Hash::make($request->password)]);

        return response()->json(["status" => "success"]);
    }
}