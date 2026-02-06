<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\User; 
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'email'    => 'required|email',
            'password' => 'required',
        ]);

        $user = User::where('users_email', $request->email)->first();

        if (!$user) {
            return response()->json(['status' => 'failure', 'errorKey' => 'emailNotFound']);
        }
        if ($user->users_approve == 0){
            return response()->json(['status' => 'failure', 'errorKey' => 'accountNotActive']);
        }

        if (!Hash::check($request->password, $user->users_password)) {
            return response()->json(['status' => 'failure', 'errorKey' => 'passwordIncorrect']);
        }
            
        return response()->json([
        "status"   => "success",
        "data"     => $user
        ]); 
    }
}
