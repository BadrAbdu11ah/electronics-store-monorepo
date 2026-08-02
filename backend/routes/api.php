<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\HomeController;
use App\Http\Controllers\Api\ItemController;
use App\Http\Controllers\Api\FavoriteController;
use App\Http\Controllers\Api\CartController; 
use App\Http\Controllers\Api\AddressController;
use App\Http\Controllers\Api\CouponController;
use App\Http\Controllers\Api\OrderController;
use App\Http\Controllers\Api\NotificationController;
use App\Http\Controllers\Api\AdminController;
use App\Http\Controllers\Auth\AuthController;

// -----------------------------------------------------------
// 1. مسارات المصادقة العامة (Auth)
// -----------------------------------------------------------
Route::controller(AuthController::class)->group(function () {
    Route::post('login', 'login');
    Route::post('signup', 'signup');
    Route::post('auth/verify-code', 'verifyCode'); 
    Route::post('logout', 'logout');
    // مسارات استعادة كلمة المرور
    Route::prefix('forgetpassword')->group(function () {
        Route::post('/checkemail',          'checkEmail');
        Route::post('/verifycode',          'verifyCode');
        Route::post('/reset-password',      'resetPassword');
        Route::post('/reset-verify-code',   'resetVerifyCode'); 
    });
});

// -----------------------------------------------------------
// 2. المسارات المحمية (تتطلب توكن Sanctum)
// -----------------------------------------------------------
Route::middleware('auth:sanctum')->group(function () {

    // الصفحة الرئيسية
    Route::get('/home', [HomeController::class, 'index']);
    Route::get('/offers', [HomeController::class, 'offers']);

    // المنتجات
    Route::prefix('items')->group(function () {
        Route::get('/view/{id}', [ItemController::class, 'index']); 
        Route::post('/search',   [ItemController::class, 'search']);
    });

    // المفضلة 
    Route::prefix('favorite')->group(function () {
        Route::get('/view',         [FavoriteController::class, 'index']);
        Route::post('/add',         [FavoriteController::class, 'store']);  
        Route::delete('/remove/{id}', [FavoriteController::class, 'destroy']); 
    });

    // السلة 
    Route::prefix('cart')->group(function () {
        Route::get('/view',         [CartController::class, 'index']);
        Route::post('/add',         [CartController::class, 'store']);     
        Route::delete('/remove/{id}', [CartController::class, 'destroy']); 
        Route::delete('/delete/{id}', [CartController::class, 'delete']);  
        Route::get('/count/{id}',   [CartController::class, 'getCountItems']); 
    });

    // العناوين
    Route::prefix('address')->group(function () {
        Route::get('/view',           [AddressController::class, 'index']);
        Route::post('/add',           [AddressController::class, 'store']);
        Route::put('/edit/{id}',      [AddressController::class, 'update']);
        Route::delete('/remove/{id}', [AddressController::class, 'destroy']);
    });

    // الكوبونات
    Route::prefix('coupon')->group(function () {
        Route::post('/check', [CouponController::class, 'show']); 
    });

    // الطلبات
    Route::prefix('order')->group(function () {
        Route::post('/checkout',    [OrderController::class, 'store']);
        Route::get('/pending',      [OrderController::class, 'index']); 
        Route::get('/archive',      [OrderController::class, 'indexArchive']); 
        Route::get('/details/{id}', [OrderController::class, 'show']); 
        Route::delete('/delete/{id}', [OrderController::class, 'destroy']); 
        Route::put('/rate/{id}', [OrderController::class, 'rate']); 
    });

    // الاشعارات
    Route::prefix('notification')->group(function () {
        Route::get('/view', [NotificationController::class, 'index']);
    });

    // مسارات التحديث
    Route::post('/refresh-token', [AuthController::class, 'deleteOldTokens']);
});

// مسارات الادمن
Route::prefix('admin')->group(function () {
    Route::get('/order/view', [AdminController::class, 'index']);
    Route::put('/order/aprove', [AdminController::class, 'aprove']); 
    Route::put('/order/reject', [AdminController::class, 'reject']); 
    Route::put('/order/done', [AdminController::class, 'done']); 
});