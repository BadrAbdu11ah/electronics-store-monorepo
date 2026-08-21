<?php

namespace App\Http\Controllers\Api\Delivery\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User; 
use Illuminate\Support\Facades\Hash;

class DeliveryAuthController extends Controller
{
    // --- [ 1. تسجيل الدخول - Login ] ---
    public function login(Request $request)
    {
        $request->validate([
            'email'    => 'required|email', 
            'password' => 'required'
        ]);

        $user = User::where('email', $request->email)->first();

        // 1. التحقق من وجود الحساب
        if (!$user) {
            return response()->json(['status' => 'failure', 'errorKey' => 'emailNotFound']);
        }

        if($user->role !== 'delivery') {
            return response()->json(["status" => "failure", "errorKey" => "notDelivery"]);
        }

        // 2. التحقق من صحة كلمة المرور 
        if (!Hash::check($request->password, $user->password)) {
            return response()->json(['status' => 'failure', 'errorKey' => 'passwordIncorrect']);
        }

        // 3. حذف التوكنات القديمة وتوليد توكن جديد باستخدام Sanctum
        $user->tokens()->delete(); 
        $token = $user->createToken('API Token')->plainTextToken;

        return response()->json([
            "status" => "success",
            "token"  => $token, 
            "user"   => $user
        ]); 
    }

    // --- [ 2. فحص الإيميل لنسيان كلمة المرور - Forget Password ] ---
    public function checkEmail(Request $request)
    {
        $request->validate(['email' => 'required|email']);

        $user = User::where('email', $request->email)->first(); 

        if (!$user) {
            return response()->json(["status" => "failure", "errorKey" => "emailNotFound"]); 
        }

        $newCode = rand(10000, 99999);
        $user->update(['verify_code' => $newCode]);

        return response()->json([
            "status"     => "success",
            "data"       => $user,
            "verifycode" => $newCode 
        ]);
    }

    // --- [ 3. التحقق من رمز التفعيل - Verify Code ] ---
    public function verifyCode(Request $request)
    {
        $request->validate([
            'email'      => 'required|email', 
            'verifycode' => 'required'
        ]);

        $user = User::where('email', $request->email)
                    ->where('verify_code', $request->verifycode)
                    ->first(); 

        if (!$user) {
            return response()->json(["status" => "failure", "errorKey" => "verificationCodeIncorrect"]);
        }

        // تحديث الحالة وتصفير كود التحقق
        $user->update([
            'approve'     => true, 
            'verify_code' => null 
        ]);

        // توليد التوكن مباشرة بعد التفعيل الناجح للدخول الفوري
        $token = $user->createToken('API Token')->plainTextToken;

        return response()->json([
            "status" => "success",
            "token"  => $token, 
            "data"   => $user
        ]); 
    }

    // --- [ 4. إعادة تعيين كلمة المرور - Reset Password ] ---
    public function resetPassword(Request $request)
    {
        $request->validate([
            'email'    => 'required|email', 
            'password' => 'required|min:8'
        ]);

        $user = User::where("email", $request->email)->first();

        if (!$user) {
            return response()->json(["status" => "failure", "errorKey" => "emailNotFound"]);
        }

        $user->update(["password" => $request->password]);

        return response()->json(["status" => "success"]);
    }

    // --- [ 5. تحديث وحذف التوكنات القديمة - Reset Tokens ] ---
    public function deleteOldTokens(Request $request)
    {
        $request->validate(['email' => 'required|email']);

        $user = User::where('email', $request->email)->first();

        if (!$user) {
            return response()->json(['status' => 'failure', 'errorKey' => 'emailNotFound']);
        }

        // حذف التوكنات القديمة وتوليد واحد نظيف
        $user->tokens()->delete(); 
        $token = $user->createToken('API Token')->plainTextToken;

        return response()->json([
            'status' => 'success',
            'token'  => $token,
            'user'   => $user
        ]);
    }

    // --- [ 6. تسجيل الخروج - Logout ] ---
    public function logout(Request $request)
    {
        $user = $request->user();

        // 1. التحقق من وجود الحساب
        if (!$user) {
            return response()->json(['status' => 'failure', 'errorKey' => 'userNotFound']);
        }

        // 2. حذف التوكنات القديمة 
        $user->tokens()->delete(); 

        return response()->json([
            "status" => "success"
        ]); 
    }
}