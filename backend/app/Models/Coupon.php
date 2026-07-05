<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Coupon extends Model
{
    protected $primaryKey = 'coupons_id';
    
    protected $fillable = [
        "coupons_name",
        "coupons_expiredate",
        "coupons_discount",
        "coupons_count",
    ];
}
