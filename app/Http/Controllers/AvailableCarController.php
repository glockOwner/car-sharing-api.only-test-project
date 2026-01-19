<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\CarService;

class AvailableCarController extends Controller
{
    protected $carService;

    public function __construct(CarService $carService)
    {
        $this->carService = $carService;
    }

    public function index (Request $request)
    {
        $request->validate([
            'start_time' => 'required|date',
            'end_time' => 'required|date|after:start_time',

        ]);

        $availableCars = $this->carService->getAvailableCars($request);

        return $availableCars->toJson(JSON_PRETTY_PRINT);
    }
}
