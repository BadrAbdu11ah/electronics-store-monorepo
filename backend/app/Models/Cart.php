<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use App\Models\Item; 
use App\Models\Order; 
use App\Models\User; 



class Cart extends Model
{
    //  اسم الجدول في قاعدة البيانات
    protected $table = 'carts';

    /**
     * الحقول القابلة للتعبئة جماعياً
     */
    protected $fillable = [
        'user_id', 
        'item_id', 
        'order_id', 
    ];

    /**
     * السجل في السلة ينتمي لمنتج واحد
     */
    public function item(): BelongsTo
    {
        return $this->belongsTo(Item::class, 'item_id', 'id');
    }

    /**
     * السجل في السلة ينتمي لطلب واحد (عند إتمام الشراء فقط)
     */
    public function order(): BelongsTo
    {
        return $this->belongsTo(Order::class, 'order_id', 'id');
    }

    /**
     * السجل في السلة ينتمي لمستخدم واحد
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}