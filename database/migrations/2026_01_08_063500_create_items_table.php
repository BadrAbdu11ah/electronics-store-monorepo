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
        Schema::create('items', function (Blueprint $table) {
            $table->id("items_id");
            $table->string("items_name");
            $table->string("items_name_ar");
            $table->text("items_desc"); 
            $table->text("items_desc_ar");
            $table->string("items_image");
            $table->integer("items_count");
            $table->integer("items_active")->default(1);
            $table->double("items_price");
            $table->double("items_discount")->default(0);

            $table->foreignId('items_categoriesID')->constrained('categories', 'categories_id')->onDelete('cascade');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('items');
    }
};
