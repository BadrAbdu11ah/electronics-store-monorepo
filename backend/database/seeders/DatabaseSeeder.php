<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash; // // ضروري جداً لتشفير كلمة المرور
use Illuminate\Support\Str; // // لاستخدام توليد النصوص العشوائية للتوكن
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // // 1. إنشاء حساب المدير (Admin)
        User::create([
            'users_name'     => 'Badr Abdullah',
            'users_email'    => 'admin@example.com',
            'users_password' => Hash::make('123456'),
            'users_phone'    => '0500000000',
            'role'           => 'admin',
            'users_approve'  => 1,
            // // توليد توكن ثابت للاختبار السريع (اختياري)
            'api_token'      => hash('sha256', 'admin-test-token'), 
        ]);

        // // 2. إنشاء حساب مستخدم تجريبي (Test User)
        // // ملاحظة: تأكد أن ملف UserFactory يدعم المسميات الجديدة (users_name إلخ)
        User::create([
            'users_name'     => 'Test User',
            'users_email'    => 'test@example.com',
            'users_password' => Hash::make('123456'),
            'users_phone'    => '0500000001', // // تغيير الرقم ليكون فريداً
            'role'           => 'user',
            'users_approve'  => 1,
            'api_token'      => hash('sha256', 'user-test-token'),
        ]);

        // // إذا أردت إنشاء 10 مستخدمين عشوائيين لاحقاً:
        // // User::factory(10)->create();
    }
}