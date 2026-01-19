<?php

namespace Database\Seeders;

use App\Models\ComfortCategory;
use App\Models\EmployeeRole;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class EmployeeRoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        EmployeeRole::factory()->has(ComfortCategory::factory()->count(1))->count(7)->create();
    }
}
