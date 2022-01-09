<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
    use HasFactory;

    public $additional_attributes = ['full_name'];
    
    public function getFullNameAttribute()
    {
        return "{$this->nombres} {$this->apellidos}";
    }

    public function entregas()
    {
        return $this->belongsToMany(Entrega::class,"entregas","persona_id","retaurante_menu_id");
    }
}
