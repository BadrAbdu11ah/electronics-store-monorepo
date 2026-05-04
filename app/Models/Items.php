<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Support\Facades\Auth;

class Items extends Model
{
    protected $fillable = [
        'items_name', 'items_name_ar', 'items_desc', 'items_desc_ar', 
        'items_count', 'items_active', 'items_price', 'items_discount', 
        'items_image', 'items_categoriesID'
    ];

    protected $appends = ['discounted_price', 'favorite'];

    public function favorites()
    {
        return $this->hasMany(Favorite::class, 'favorites_itemsID', 'items_id');
    }

    protected function favorite(): Attribute
    {
        return Attribute::make(
            get: function () {
                // التأكد من وجود مستخدم مسجل دخول
                $userId = auth('sanctum')->id(); 
                if (!$userId) return 0;

                // التحقق إذا كان المنتج موجوداً في مفضلة هذا المستخدم
                return $this->favorites->where('favorites_usersID', $userId)->isNotEmpty() ? 1 : 0;
            },
        );
    }

    
    protected function discountedPrice(): Attribute
    {
        return Attribute::make(
            get: function () {
                $originalPrice = $this->items_price; 
                $discountPercentage = $this->items_discount;
                $discountAmount = $originalPrice * ($discountPercentage / 100);
                return $originalPrice - $discountAmount; 
            },
        );
    }

    protected function itemsImage(): Attribute
    {
        return Attribute::make(
            get: fn ($value) => asset("upload/items/" . $value),
        );
    }
}