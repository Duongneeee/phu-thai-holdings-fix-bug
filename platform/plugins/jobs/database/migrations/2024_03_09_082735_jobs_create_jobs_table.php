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
        Schema::create('job_recruitments', function (Blueprint $table) {
            $table->id();
            $table->text('name')->nullable();
            $table->text('description')->nullable();
            $table->text('job_desc')->nullable()->comment('Mô tả công việc');
            $table->text('job_requirements')->nullable()->comment("Yêu cầu công việc");
            $table->text('job_benefits')->nullable()->comment('Quyền lợi');
            $table->text('job_contact')->nullable()->comment("Liên hệ");
            $table->dateTime('job_deadline')->nullable();
            $table->bigInteger('job_field_id')->nullable();
            $table->bigInteger('job_location_id')->nullable();
            $table->bigInteger('job_company_id')->nullable();
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('job_fields', function (Blueprint $table) {
            $table->id();
            $table->text('name')->nullable();
            $table->bigInteger('idx')->default(0)->nullable();
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('job_locations', function (Blueprint $table) {
            $table->id();
            $table->text('name')->nullable();
            $table->bigInteger('idx')->default(0)->nullable();
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('job_companies', function (Blueprint $table) {
            $table->id();
            $table->text('name')->nullable();
            $table->bigInteger('idx')->default(0)->nullable();
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });


        Schema::create('job_apply_jobs', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('job_id');
            $table->text('name')->nullable();
            $table->text('email')->nullable();
            $table->text('phone')->nullable();
            $table->text('address')->nullable();
            $table->text('cv_file')->nullable();
            $table->text('url')->nullable();
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
        Schema::dropIfExists('job_recruitments');
        Schema::dropIfExists('job_fields');
        Schema::dropIfExists('job_locations');
        Schema::dropIfExists('job_companies');
        Schema::dropIfExists('job_apply_jobs');

    }
};
