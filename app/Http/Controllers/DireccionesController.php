<?php

namespace App\Http\Controllers;

use App\Models\direcciones;
use App\Models\expedientes;
use Illuminate\Http\Request;

class DireccionesController extends Controller
{
    /**
     * Display a listing of the resource.
     */


    /**
     * Show the form for creating a new resource.
     */
    public function index()
    {
        $oficinas= direcciones::all();
        return view('oficinas.index',compact('oficinas'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $obj = new direcciones();
        $obj->nombre=request('nombre');
        $obj->save();
        return redirect()->route('index.oficinas')->with('mensaje','Oficina Registrada');
    }

    /**
     * Display the specified resource.
     */
    public function show(regiones $regiones)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(regiones $regiones)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {  
        $id = request('idoficina');
        $obj = direcciones::findOrFail($id);
        $obj->nombre=request('nombre');
        $obj->save();
        return redirect()->route('index.oficinas')->with('mensaje','Oficina Actualizada');
        
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        $id = request('idoficina_eliminar');
        $datos_en_direccion=expedientes::where('id_direcciones',$id)->first();
        if ($datos_en_direccion){
            return redirect()->route('index.oficinas')->with('mensaje','El registro no se puede eliminar, contiene datos!')->with('color','danger');
        }
        $oficinas = direcciones::findOrFail($id);
        $oficinas->delete();
        
        return redirect()->route('index.oficinas')->with('mensaje','Registro Eliminado!')->with('color','success');

    }
}
