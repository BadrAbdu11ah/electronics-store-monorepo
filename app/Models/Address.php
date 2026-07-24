<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $primaryKey = 'addresses_id';
    
    protected $fillable = [
        'addresses_usersID',
        'addresses_name',
        'addresses_city',
        'addresses_street',
        'addresses_lat',
        'addresses_long',
        'addresses_phone',
    ];
}
