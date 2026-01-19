<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class Employee extends User
{
    use HasApiTokens, HasFactory;

    public function employeeRole()
    {
        return $this->belongsTo(EmployeeRole::class);
    }

    public function driverCar()
    {
        return $this->hasOne(Car::class, 'driver_id');
    }

    public function booking()
    {
        return $this->hasMany(Booking::class);
    }
}
