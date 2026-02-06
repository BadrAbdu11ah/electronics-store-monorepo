<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    protected $fillable =[
        "categories_name",
        "categories_name_ar",
        "categories_description",
        "categories_image"
    ];

    protected function getCategoriesImageAttribute($value)
    {
        return asset("upload/categories/" . $value);
    }
}
