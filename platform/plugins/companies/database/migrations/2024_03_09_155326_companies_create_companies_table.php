<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('companies_business_categories', function (Blueprint $table) {
            $table->id();
            $table->text('name')->nullable();
            $table->integer('idx')->nullable();
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('companies', function (Blueprint $table) {
            $table->id();
            $table->text('name')->nullable();
            $table->bigInteger('business_category_id')->nullable();
            $table->text('description')->nullable();
            $table->text('image')->nullable();
            $table->text('link')->nullable();
            $table->integer('idx')->nullable();
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('companies');
        Schema::dropIfExists('companies_business_categories');
    }
};
