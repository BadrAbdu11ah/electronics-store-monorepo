<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\HomeController;
use App\Http\Controllers\Api\ItemsController;
use App\Http\Controllers\Api\FavoriteController;
use App\Http\Controllers\Api\CartController; 
use App\Http\Controllers\Api\AddressController;
use App\Http\Controllers\Api\CouponController;
use App\Http\Controllers\Api\OrderController;
use App\Http\Controllers\Auth\AuthController;

// // 1. مسارات المصادقة (تسجيل الدخول والتسجيل واستعادة كلمة المرور)
Route::controller(AuthController::class)->group(function () {
    Route::post('login', 'login');
    Route::post('signup', 'signup');
    
    // // مسارات استعادة كلمة المرور
    Route::prefix('forgetpassword')->group(function () {
        Route::post('/checkemail',    'checkEmail');
        Route::post('/verifycode',    'verifyCode');
        Route::post('/reset-password', 'resetPassword');
    });
});

// // -----------------------------------------------------------
// // 2. المسارات المحمية (تتطلب توكن Sanctum)
// // -----------------------------------------------------------
Route::middleware('auth:sanctum')->group(function () {

    // // الصفحة الرئيسية
    Route::post('/home', [HomeController::class, 'index']);

    // // المنتجات
    Route::prefix('items')->group(function () {
        Route::post('/view',   [ItemsController::class, 'index']); 
        Route::post('/search', [ItemsController::class, 'search']);
    });

    // // المفضلة
    Route::prefix('favorite')->group(function () {
        Route::post('/view',   [FavoriteController::class, 'index']);
        Route::post('/add',    [FavoriteController::class, 'store']);
        Route::post('/remove', [FavoriteController::class, 'destroy']);
    });

    // // السلة
    Route::prefix('cart')->group(function () {
        Route::post('/view',   [CartController::class, 'index']);
        Route::post('/add',    [CartController::class, 'store']);
        Route::post('/remove', [CartController::class, 'destroy']);
        Route::post('/count',  [CartController::class, 'getCountItems']);
    });

    // // العناوين
    Route::prefix('address')->group(function () {
        Route::post('/view',   [AddressController::class, 'index']);
        Route::post('/add',    [AddressController::class, 'store']);
        Route::post('/edit',   [AddressController::class, 'update']);
        Route::post('/remove', [AddressController::class, 'destroy']);
    });

    // // الكوبونات
    Route::prefix('coupon')->group(function () {
        Route::post('/checkcoupon', [CouponController::class, 'show']);
    });

    // // الطلبات
    Route::prefix('order')->group(function () {
        Route::post('/checkout', [OrderController::class, 'store']);
        Route::post('/pending',  [OrderController::class, 'index']);
        Route::post('/details',  [OrderController::class, 'show']);
    });

});