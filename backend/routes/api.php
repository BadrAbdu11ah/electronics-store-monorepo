<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\User\Auth\AuthController;
use App\Http\Controllers\Api\User\HomeController;
use App\Http\Controllers\Api\User\ItemController;
use App\Http\Controllers\Api\User\FavoriteController;
use App\Http\Controllers\Api\User\CartController; 
use App\Http\Controllers\Api\User\AddressController;
use App\Http\Controllers\Api\User\CouponController;
use App\Http\Controllers\Api\User\OrderController;
use App\Http\Controllers\Api\User\NotificationController;

use App\Http\Controllers\Api\Admin\Auth\AdminAuthController;
use App\Http\Controllers\Api\Admin\Order\AdminOrderController;
use App\Http\Controllers\Api\Admin\Categories\AdminCategoriesController;
use App\Http\Controllers\Api\Admin\Items\AdminItemsController;

use App\Http\Controllers\Api\Delivery\Auth\DeliveryAuthController;
use App\Http\Controllers\Api\Delivery\Order\DeliveryOrderController;

// -----------------------------------------------------------
// 1. مسارات المصادقة العامة (Auth)
// -----------------------------------------------------------
Route::prefix('user')->group(function () {
    Route::controller(AuthController::class)->group(function () {
        Route::post('/google-login', 'googleLogin');
        Route::post('/login', 'login');
        Route::post('/signup', 'signup');
        Route::post('/auth/verify-code', 'verifyCode'); 
        Route::post('/logout', 'logout');
        // مسارات استعادة كلمة المرور
        Route::prefix('forgetpassword')->group(function () {
            Route::post('/checkemail',          'checkEmail');
            Route::post('/verifycode',          'verifyCode');
            Route::post('/reset-password',      'resetPassword');
            Route::post('/reset-verify-code',   'resetVerifyCode'); 
        });
    });
});

// -----------------------------------------------------------
// 2. المسارات المحمية (تتطلب توكن Sanctum)
// -----------------------------------------------------------
Route::middleware('auth:sanctum')->group(function () {
    Route::prefix('user')->group(function () {
        // الصفحة الرئيسية
        Route::controller(HomeController::class)->group(function () {
            Route::get('/home', 'index');
            Route::get('/offers', 'offers');
        });

        // المنتجات
        Route::prefix('items')->group(function () {
            Route::controller(ItemController::class)->group(function () {
                Route::get('/view/{id}',   'index'); 
                Route::post('/search',     'search');
            });
        });

        // المفضلة 
        Route::prefix('favorite')->group(function () {
            Route::controller(FavoriteController::class)->group(function () {
                Route::get('/view',         'index');
                Route::post('/add',         'store');  
                Route::delete('/remove/{id}', 'destroy'); 
            });
        });

        // السلة 
        Route::prefix('cart')->group(function () {
            Route::controller(CartController::class)->group(function () {
                Route::get('/view',         'index');
                Route::post('/add',         'store');     
                Route::delete('/remove/{id}', 'destroy'); 
                Route::delete('/delete/{id}', 'delete');  
                Route::get('/count/{id}',   'getCountItems'); 
            });
        });

        // العناوين
        Route::prefix('address')->group(function () {
            Route::controller(AddressController::class)->group(function () {
                Route::get('/view',           'index');
                Route::post('/add',           'store');
                Route::put('/edit/{id}',      'update');
                Route::delete('/remove/{id}', 'destroy');
            });
        });

        // الكوبونات
        Route::prefix('coupon')->group(function () {
            Route::post('/check', [CouponController::class, 'applyCoupon']); 
        });

        // الطلبات
        Route::prefix('order')->group(function () {
            Route::controller(OrderController::class)->group(function () {
                Route::post('/checkout', 'store');
                Route::get('/pending',   'index'); 
                Route::get('/archive',   'indexArchive'); 
                Route::get('/details/{id}', 'show'); 
                Route::delete('/delete/{id}', 'destroy'); 
                Route::put('/rate/{id}', 'rate'); 
            });
        });

        // الاشعارات
        Route::prefix('notification')->group(function () {
            Route::get('/view', [NotificationController::class, 'index']);
        });

        // مسارات التحديث
        Route::post('/refresh-token', [AuthController::class, 'deleteOldTokens']);
    });
});


// -----------------------------------------------------------
// 3. مسارات الدليفري
// -----------------------------------------------------------
Route::prefix('delivery')->group(function () {
    Route::controller(DeliveryAuthController::class)->group(function () {
        Route::post('/login', 'login');
        Route::post('/logout', 'logout');
        
        Route::prefix('forget')->group(function () {
            Route::post('/check-email', 'checkEmail');
            Route::post('/verify-code', 'verifyCode');
            Route::post('/reset-password', 'resetPassword');
        });
    });

    Route::middleware('auth:sanctum')->group(function () {
        Route::prefix('orders')->controller(DeliveryOrderController::class)->group(function () {
            Route::get('/pending', 'pending');
            Route::get('/accepted', 'accepted');
            Route::get('/archived', 'archived');
            Route::get('/{order}/details', 'show');
            Route::post('/{order}/approve', 'approve');
            Route::post('/{order}/done', 'done');
        });
    });
});


// -----------------------------------------------------------
// 4. مسارات الأدمن (Auth)
// -----------------------------------------------------------
Route::prefix('admin')->group(function () {
    Route::controller(AdminAuthController::class)->group(function () {
        Route::post('/login', 'login');
        Route::post('/logout', 'logout');
        
        Route::prefix('forget')->group(function () {
            Route::post('/check-email', 'checkEmail');
            Route::post('/verify-code', 'verifyCode');
            Route::post('/reset-password', 'resetPassword');
        });
    });

    // المسارات المحمية للأدمن عبر Sanctum
    Route::middleware('auth:sanctum')->group(function () {
        // إدارة الأقسام
        Route::prefix('categories')->controller(AdminCategoriesController::class)->group(function () {
            // عرض جميع الأقسام
            Route::get('/view', 'index');
            // إضافة قسم جديد
            Route::post('/add', 'store');
            // تعديل قسم 
            Route::post('/{category}/edit', 'update');
            // حذف قسم
            Route::delete('/{category}/remove', 'destroy');
        });

        // إدارة المنتجات
        Route::prefix('items')->controller(AdminItemsController::class)->group(function () {
            // عرض جميع المنتجات
            Route::get('/view', 'index');
            // إضافة منتج جديد
            Route::post('/add', 'store');
            // تعديل منتج
            Route::post('/{item}/edit', 'update');
            // حذف منتج
            Route::delete('/{item}/remove', 'destroy');
        });

        // إدارة طلبات الأدمن
        Route::prefix('orders')->controller(AdminOrderController::class)->group(function () {
            // عرض الطلبات قيد الانتظار
            Route::get('/pending', 'pending');
            // عرض الطلبات المقبولة
            Route::get('/accepted', 'accepted');
            // عرض أرشيف الطلبات
            Route::get('/archived', 'archived');
            // عرض تفاصيل طلب محدد
            Route::get('/{order}/details', 'show');
            // قبول الطلب من الأدمن
            Route::post('/{order}/approve', 'approve');
            // رفض الطلب من الأدمن
            Route::post('/{order}/reject', 'reject');
        });
    });
});