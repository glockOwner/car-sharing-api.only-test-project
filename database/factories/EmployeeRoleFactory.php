<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\EmployeeRole>
 */
class EmployeeRoleFactory extends Factory
{
    private $employeeRoles = [
        'Director',
        'Manager',
        'Developer',
        'HR',
        'Driver',
    ];

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => $this->employeeRoles[array_rand($this->employeeRoles)],
        ];
    }
}
