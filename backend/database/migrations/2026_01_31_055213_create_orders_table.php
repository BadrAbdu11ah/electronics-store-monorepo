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
            $table->id(); 
            
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->foreignId('address_id')->nullable()->constrained()->onDelete('cascade');
            
            $table->integer("type")->default(0); // 0 => Delivery, 1 => Drive Thru 
            $table->double("delivery_price")->default(0);
            $table->double("price");
            $table->double("total_price");
            
            $table->foreignId('coupon_id')->nullable()->default(null)->constrained()->onDelete('set null');
            
            $table->integer("payment_method")->default(0); // 0 => cash, 1 => payment card
            $table->integer("status")->default(0); // 0 => pending, 1 => rejected, 2 => accepted, 3 => prepare, 4 => delivered, 5 => done, 6 => cancelled
            
            $table->decimal("rating", 2, 1)->nullable();
            $table->string("review", 255)->nullable();
            
            $table->timestamps();
            $table->softDeletes();
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