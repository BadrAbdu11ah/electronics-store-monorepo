<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\Api\SignupController;
use App\Http\Controllers\Api\ForgetPasswordController;
use App\Http\Controllers\Api\HomeController;
use App\Http\Controllers\Api\ItemsController;
use App\Http\Controllers\Api\FavoriteController;
use App\Http\Controllers\Api\CartController; 
use App\Http\Controllers\Api\AddressController;
use App\Http\Controllers\Api\CouponController;
use App\Http\Controllers\Api\OrderController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

// Login & Signup
Route::post('/login', [LoginController::class, 'login']);
Route::post('/signup', [SignupController::class, 'signup']);

// Password Reset Flow
Route::prefix('forgetpassword')->group(function () {
    Route::post('/checkemail', [ForgetPasswordController::class, 'checkEmail']);
    Route::post('/verifycode', [ForgetPasswordController::class, 'verifyCode']);
    Route::post('/reset', [ForgetPasswordController::class, 'resetPassword']);
});

Route::post('/home', [HomeController::class, 'home']);

Route::prefix('items')->group(function () {
    Route::post('/view', [ItemsController::class, 'viewitems']);
    Route::post('/search', [ItemsController::class, 'search']);
});

Route::prefix('favorite')->group(function () {
    Route::post('/add', [FavoriteController::class, 'favoriteAdd']);
    Route::post('/remove', [FavoriteController::class, 'favoriteRemove']);
    Route::post('/view', [FavoriteController::class, 'favoriteView']);
});

Route::prefix('cart')->group(function () {
    Route::post('/add', [CartController::class, 'add']);
    Route::post('/remove', [CartController::class, 'remove']);
    Route::post('/count', [CartController::class, 'getCountItems']);
    Route::post('/view', [CartController::class, 'view']);
});

Route::prefix('address')->group(function () {
    Route::post('/add', [AddressController::class, 'add']);
    Route::post('/edit', [AddressController::class, 'edit']);
    Route::post('/remove', [AddressController::class, 'remove']);
    Route::post('/view', [AddressController::class, 'view']);
});

Route::prefix('coupon')->group(function () {
    Route::post('/checkcoupon', [CouponController::class, 'checkCoupon']);
});

Route::prefix('order')->group(function () {
    Route::post('/checkout', [OrderController::class, 'checkout']);
    Route::post('/pending', [OrderController::class, 'pending']);
    Route::post('/details', [OrderController::class, 'details']);
});