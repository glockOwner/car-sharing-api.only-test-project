<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Car extends Model
{
    use HasFactory;

    public function comfortCategory()
    {
        return $this->belongsTo(ComfortCategory::class);
    }

    public function driver()
    {
        return $this->belongsTo(Employee::class, 'driver_id');
    }

    public function booking()
    {
        return $this->hasMany(Booking::class);
    }
}
