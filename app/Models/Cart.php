<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $fillable = [
        'carts_usersID', 
        'carts_itemsID', 
        'carts_ordersID', 
    ];

    public function item()
    {
        return $this->belongsTo(Items::class, "carts_itemsID", "items_id");
    }
    public function order()
    {
        return $this->belongsTo(Order::class, "carts_ordersID", "orders_id");
    }
}

