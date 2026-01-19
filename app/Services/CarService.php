<?php


namespace App\Services;


use App\Models\Booking;
use App\Models\Car;

class CarService
{
    public function  getAvailableCars ($requestData)
    {
        $user = auth()->user();

        $availableCategories = $requestData->comfort_category
            ? $user->employeeRole->comfortCategories->where('id', $requestData->comfort_category)->pluck('id')->toArray()
            : $user->employeeRole->comfortCategories->pluck('id')->toArray();

        $bookedCars = Booking::where(function($q) use ($requestData) {
            $q->where('started_at', '<=', $requestData->end_time)
                ->where('ended_at', '>=', $requestData->start_time);
        })->pluck('car_id');


        $availableCars = Car::with(['comfortCategory', 'driver'])
            ->whereIn('comfort_category_id', $availableCategories)
            ->whereNotIn('id', $bookedCars)
            ->when($requestData->model, function ($query, $model) {
                return $query->where('model', 'like', "%{$model}%");
            })->get();

        return $availableCars;
    }
}
