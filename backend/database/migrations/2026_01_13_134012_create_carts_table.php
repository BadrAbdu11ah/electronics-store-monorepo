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
        Schema::create('carts', function (Blueprint $table) {
            $table->id('carts_id');
            $table->foreignId('carts_usersID')->constrained('users', 'users_id')->onDelete('cascade');
            $table->foreignId('carts_itemsID')->constrained('items', 'items_id')->onDelete('cascade');
            $table->integer('carts_ordersID')->default(0);
            $table->timestamps();      
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('carts');
    }
};
