<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Empleado extends Persona
{
    use HasFactory;


    public function persona()
    {
        return $this->belongsTo(Persona::class);
    }
}
