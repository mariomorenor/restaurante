<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PersonaController extends \TCG\Voyager\Http\Controllers\VoyagerBaseController
{
    public function index(Request $request)
    {
       return parent::index($request);
    }
}
