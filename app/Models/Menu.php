<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;

    protected $table = "restaurante_menus";

    public function personas()
    {
        return $this->belongsToMany(Persona::class);
    }

    public function entregas()
    {
        return $this->belongsToMany(Entrega::class,"entregas","restaurante_menu_id","persona_id");
    }

    public function getCostoAttribute($value)
    {
        return "$ " . number_format($float = $value, $decimals = 2);
    }
}
