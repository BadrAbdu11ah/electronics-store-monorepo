<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User; 
use Illuminate\Support\Facades\Hash;

class ForgetPasswordController extends Controller
{
    public function checkEmail(Request $request)
    {
        $request->validate(['email' => 'required|email']);

        $user = User::where('users_email', $request->email)->first(); 

        if (!$user) {
            return response()->json([
                "status"   => "failure",
                "errorKey"  => "emailNotFound"
            ]); 
        }

        $newCode = rand(10000, 99999);
        $user->update(['users_verfiycode' => $newCode]);

        //  Mail::to($user->users_email)->send(...)

        return response()->json([
            "status"   => "success",
            "data"     => $user,
            "verifycode" => $newCode 
        ]);
    }

    public function verifyCode(Request $request)
    {
        $request->validate([
            'email'      => 'required|email',
            'verifycode' => 'required',
        ]);

        $user = User::where('users_email', $request->email)
                    ->where('users_verfiycode', $request->verifycode)
                    ->first(); 

        if (!$user) {
            return response()->json([
                "status"   => "failure",
                "errorKey"  => "verificationCodeIncorrect"
            ]);
        }

        $user->update([
            'users_approve'    => 1,
            'users_verfiycode' => 0, 
        ]);

        return response()->json([
            "status" => "success",
        ]);
    }

    public function resetPassword(Request $request)
    {
        $request->validate([
            "email"    => "required|email",
            "password" => "required|min:8" 
        ]);

        $user = User::where("users_email", $request->email)->first();

        if (!$user) {
            return response()->json([
                "status"   => "failure",
                "message"  => "emailNotFound"
            ]);
        }

        $user->update([
            "users_password" => Hash::make($request->password), 
        ]);

        return response()->json([
            "status" => "success"
        ]);
    }
}
