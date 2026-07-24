<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $primaryKey = 'orders_id';
    
    protected $fillable = [
        'orders_usersID',
        'orders_addressesID',
        'orders_type', // 0 => Delivery, 1 => Drive Thru 
        'orders_price_delivery',
        'orders_price',
        'orders_total_price',
        'orders_couponID',
        'orders_payment_method', // 0 => cash, 1 => payment card
        'orders_status', 
    ];

    public function coupon()
    {
        return $this->belongsTo(Coupon::class, "orders_couponID", "coupons_id");
    }

    public function address()
    {
        return $this->belongsTo(Address::class, "orders_addressesID", "addresses_id");
    }
    
}
