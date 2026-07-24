<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    protected $table = 'users'; 
    protected $primaryKey = 'users_id'; 

    protected $fillable = [
        'users_name',
        'users_email',
        'users_password',
        'users_phone',
        'role',          
        'api_token',     
        'users_approve',
    ];

    protected $hidden = [
        'users_password',
        'remember_token',
        'api_token',    
    ];

    protected function casts(): array
    {
        return [
            'users_password' => 'hashed', 
        ];
    }

    public function hasRole(string $role): bool
    {
        return $this->role === $role;
    }

    public function orders()
    {
        return $this->hasMany(Order::class, 'orders_usersid', 'users_id');
    }
}