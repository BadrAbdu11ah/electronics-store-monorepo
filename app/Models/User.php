<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    protected $table = 'users'; 

    protected $primaryKey = 'users_id'; 

    protected $fillable = [
        'users_name',
        'users_email',
        'users_password',
        'users_phone',
        'users_verfiycode',
        'users_approve',
    ];

    protected $hidden = [
        'users_password',
        'remember_token',
    ];

    public $timestamps = false;
}