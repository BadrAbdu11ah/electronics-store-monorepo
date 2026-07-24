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
        Schema::create('orders', function (Blueprint $table) {
            $table->id('orders_id');
            $table->foreignId('orders_usersID')->constrained('users', 'users_id')->onDelete('cascade');
            $table->foreignId('orders_addressesID')->nullable()->constrained('addresses', 'addresses_id')->onDelete('cascade');
            $table->integer("orders_type")->default(0); // 0 => Delivery, 1 => Drive Thru 
            $table->double("orders_price_delivery")->default(0);
            $table->double("orders_price");
            $table->double("orders_total_price");
            $table->integer("orders_couponID")->default(0);
            $table->integer("orders_payment_method")->default(0); // 0 => cash, 1 => payment card
            $table->integer("orders_status")->default(0); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
