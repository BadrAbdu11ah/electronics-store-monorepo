<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute; 

class Items extends Model
{
    protected $fillable = [
        'items_name', 'items_name_ar', 'items_desc', 'items_desc_ar', 
        'items_count', 'items_active', 'items_price', 'items_discount', 
        'items_image', 'items_categoriesID'
    ];

    protected $appends = ['discounted_price'];

    protected function discountedPrice(): Attribute
    {
        return Attribute::make(
            get: function () {
                $originalPrice = $this->items_price; 
                $discountPercentage = $this->items_discount;

                $discountAmount = $originalPrice * ($discountPercentage / 100);
                $finalPrice = $originalPrice - $discountAmount;

                return $finalPrice; 
            },
        );
    }


    public function scopeSearch($query, $val)
    {
        return $query->where("items_name", "LIKE", "%$val%")
                     ->orWhere("items_desc", "LIKE", "%$val%");
    }

    public function category()
    {
        return $this->belongsTo(Categories::class, "items_categoriesID", "categories_id");
    }

    protected function itemsImage(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => asset("upload/items/" . $value), // http://192.168.1.6:8000/api
        );
    }
}