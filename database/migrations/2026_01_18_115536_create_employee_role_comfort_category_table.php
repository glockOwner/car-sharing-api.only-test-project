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
        Schema::create('comfort_category_employee_role', function (Blueprint $table) {
            $table->foreignId('employee_role_id')->nullable()->constrained();
            $table->foreignId('comfort_category_id')->nullable()->constrained();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comfort_category_employee_role');
    }
};
