<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('addresses', function (Blueprint $table) {
            $table->id('addresses_id');
            $table->foreignId('addresses_usersID')->constrained('users', 'users_id')->onDelete('cascade');
            $table->string('addresses_name');
            $table->string('addresses_city');
            $table->string('addresses_street');
            $table->double('addresses_lat');
            $table->double('addresses_long');
            $table->string('addresses_phone');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('addresses');
    }
};
