<?php

namespace App\Http\Controllers;

use App\Models\agrarios_deudores;
use Illuminate\Http\Request;

class AgrariosDeudoresController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $deudores=agrarios_deudores::all();
        
        return view('agrarios/deudores/index',compact('deudores'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(agrarios_deudores $agrarios_deudores)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(agrarios_deudores $agrarios_deudores)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, agrarios_deudores $agrarios_deudores)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(agrarios_deudores $agrarios_deudores)
    {
        //
    }
}
