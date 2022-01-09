<?php

namespace App\Http\Controllers;

use App\Models\Entrega;
use Carbon\Carbon;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\Request;

class EntregasController extends \TCG\Voyager\Http\Controllers\VoyagerBaseController
{
    public function store(Request $request)
    {
        $entregas = Entrega::where("persona_id", $request->persona_id)
                            ->whereBetween("fecha", 
                            [Carbon::parse($request->fecha)->format("Y-m-d 00:00:00"), Carbon::parse($request->fecha)->format("Y-m-d 23:59:59")])
                            ->get();

        if (count($entregas)>0) {
            $entrega_error="";
            return redirect()->route("voyager.entregas.create",compact("entrega_error"));
        }else{
            parent::store($request);
            return redirect()->route("voyager.entregas.index");
        }
    }
}
