<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Entrega extends Model
{
    use HasFactory;

    public $timestamps=false;


    public function persona()
    {
        return $this->belongsTo(Persona::class);
    }
}
