<?php

namespace Database\Factories;

use App\Models\Car;
use App\Models\Employee;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Car>
 */
class CarFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $idsOfAssignedDrivers = Car::all()->pluck('driver_id')->toArray();
        $drivers = Employee::whereHas('employeeRole', function ($query) {
            $query->where('name', '=', 'Driver');
        })->pluck('id')->toArray();
        $drivers = array_diff($drivers, $idsOfAssignedDrivers);
        return [
            'model' => fake()->sentence(3, true),
            'comfort_category_id' => rand(1,5),
            'driver_id' => $drivers[array_rand($drivers)],
        ];
    }
}
