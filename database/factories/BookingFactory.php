<?php

namespace Database\Factories;

use App\Models\Car;
use App\Models\Employee;
use Carbon\Carbon;
use DateTime;
use Illuminate\Database\Eloquent\Factories\Factory;
use function Ramsey\Uuid\toString;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Booking>
 */
class BookingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $startTime = $this->generateRandomDateTime("2024-01-01", "2025-12-31");

        $carIds = Car::all()->pluck('id')->toArray();
        $employeeIds = Employee::all()->pluck('id')->toArray();
        return [
            'name' => fake()->name(),
            'started_at' => Carbon::createFromTimestamp($startTime)->toDateTimeString(),
            'ended_at' => Carbon::createFromTimestamp($startTime + 18000)->toDateTimeString(),
            'car_id' => $carIds[array_rand($carIds)],
            'employee_id' => $employeeIds[array_rand($employeeIds)],
        ];
    }

    private function generateRandomDateTime($startDate, $endDate) {
        $minTimestamp = strtotime($startDate);
        $maxTimestamp = strtotime($endDate);

        $randomTimestamp = mt_rand($minTimestamp, $maxTimestamp);

        $randomDate = DateTime::createFromFormat('U', $randomTimestamp);

        return $randomDate->getTimestamp();
    }
}
