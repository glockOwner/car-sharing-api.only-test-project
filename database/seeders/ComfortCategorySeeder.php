<?php

namespace Database\Seeders;

use App\Models\ComfortCategory;
use App\Models\EmployeeRole;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ComfortCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        ComfortCategory::factory()->count(7)->create();
    }
}
