<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use App\Models\User;
use App\Models\Address;
use App\Models\Coupon;

class Order extends Model
{
    // تحديد اسم الجدول في قاعدة البيانات
    protected $table = 'orders';

    /**
     * الحقول القابلة للتعبئة جماعياً
     */
    protected $fillable = [
        'user_id',
        'address_id',
        'type',             // 0 => Delivery, 1 => Drive Thru 
        'delivery_price',
        'price',
        'total_price',
        'coupon_id',
        'payment_method',   // 0 => cash, 1 => payment card
        'status',           // 0 => pending, 1 => rejected, 2 => accepted, 3 => prepare, 4 => delivered, 5 => done, 6 => cancelled
        'rating',
        'review',
    ];

    /**
     * الطلب ينتمي لمستحدم واحد محدد
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }

    /**
     * الطلب ينتمي لعنوان شحن واحد (يكون nullable في حال كان الاستلام من المتجر Drive Thru)
     */
    public function address(): BelongsTo
    {
        return $this->belongsTo(Address::class, 'address_id', 'id');
    }

    /**
     * الطلب ينتمي لكوبون خصم واحد (إذا استخدم المستخدم كوبون)
     */
    public function coupon(): BelongsTo
    {
        return $this->belongsTo(Coupon::class, 'coupon_id', 'id');
    }
}