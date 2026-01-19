<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ComfortCategory>
 */
class ComfortCategoryFactory extends Factory
{

    private $comfortCategories = [
        'VIP',
        'Business',
        'Comfort+',
        'Comfort',
        'Economy'
    ];
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => $this->comfortCategories[array_rand($this->comfortCategories)],
        ];
    }
}
