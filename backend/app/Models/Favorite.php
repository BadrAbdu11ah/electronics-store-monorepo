<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use App\Models\Items;


class Favorite extends Model
{
    protected $fillable = [
        'favorites_usersID', 
        'favorites_itemsID', 
    ];

    public function item()
    {
        return $this->belongsTo(Items::class, "favorites_itemsID", "items_id");
    }
}
