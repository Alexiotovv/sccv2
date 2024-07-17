<?php

namespace App\Http\Controllers;

use App\Models\expedientes;
use App\Models\direcciones;
use Illuminate\Http\Request;
use Validator;
use DB;
class ExpedientesController extends Controller
{
    
    public function carta_expedientes($doc_identidad){
        
        $deudor_natural=DB::table('deudores')
        ->leftjoin('expedientes','expedientes.id_deudores','=','deudores.id')
        ->leftjoin('cronogramas','cronogramas.id_expedientes','=','expedientes.id')
        ->where('deudores.dni','=',$doc_identidad)
        ->select('deudores.*','expedientes.*','cronogramas.estado')
        ->get();
        if ($deudor_natural->isNotEmpty()) {
            return response()->json(['data'=>$deudor_natural,'status'=>'success'], 200);
        }

        $deudor_juridico=DB::table('deudores')
        ->leftjoin('expedientes','expedientes.id_deudores','=','deudores.id')
        ->leftjoin('cronogramas','cronogramas.id_expedientes','=','expedientes.id')
        ->where('deudores.ruc','=',$doc_identidad)
        ->select('deudores.*','expedientes.*','cronogramas.estado')
        ->get();

        if ($deudor_juridico->isNotEmpty()) {
            return response()->json(['data'=>$deudor_juridico,'status'=>'success'], 200);
        }
        return response()->json(['message'=>'No existe registros con documento proporcionado','status'=>'success'], 200);

    }

    public function carta($id_expediente){
        $data= DB::table('expedientes')
        ->leftjoin('deudores','expedientes.id_deudores','=','deudores.id')
        ->leftjoin('distritos','distritos.id','=','deudores.id_distritos')
        ->leftjoin('provincias','provincias.id','=','distritos.id_provincias')
        ->leftjoin('cronogramas','expedientes.id','=','cronogramas.id_expedientes')
        ->leftjoin('tipo_personas','tipo_personas.id','=','deudores.id_tipopersonas')
        ->where('expedientes.id','=',$id_expediente)
        ->select(
        'deudores.dni',
        'deudores.ruc',
        'deudores.nombre',
        'deudores.apellidos',
        'deudores.domicilio',
        'deudores.nombre',
        'distritos.nombre_distrito',
        'provincias.nombre_provincia',
        'cronogramas.estado')
        ->get();

        return response()->json(['data'=>$data,'status'=>'success'], 200);

    }


    public function index()
    {
        $expedientes=DB::table('expedientes')
        ->leftjoin('deudores','deudores.id','=','expedientes.id_deudores')
        ->leftjoin('direcciones','direcciones.id','=','expedientes.id_direcciones')
        ->select(
            'expedientes.id',
            'deudores.nombre',
            'deudores.apellidos',
            'deudores.nombre_rep',
            'deudores.apellidos_rep',
            'deudores.dni',
            'deudores.ruc',
            'direcciones.id as id_direccion',
            'direcciones.nombre as direccion',
            'expedientes.concepto',
            'expedientes.monto',
            'expedientes.expediente',
            'expedientes.fecha',
            'expedientes.uit',
            'expedientes.importe',
            'expedientes.resolucion_admin',
            'expedientes.fecha_resolucion_admin',
            'expedientes.noaperturado',
            'expedientes.archivo',
            'expedientes.created_at')
        ->orderBy('expedientes.id','desc')
        ->paginate(1500);
        
        return view('expedientes.index',compact('expedientes'));
        

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $oficinas=direcciones::all();
        return view('expedientes.create',compact('oficinas'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        
        $rules = [
            'id_deudor' => 'required|integer',
            'concepto' => 'required|string|max:250',
            'monto' => 'required|numeric',
            'expediente' => 'required|string|max:250',
            'fecha' => 'required|date',
            'uit' => 'required|numeric',
            'importe' => 'required|numeric',
            'fecha_resolucion_admin' => 'required|date',
        ];

        $messages = [
            'id_deudor.required' => 'El campo deudor es obligatorio.',
            'concepto.required' => 'El campo concepto es obligatorio.',
            'monto.required' => 'El campo monto es obligatorio.',
            'expediente.required' => 'El campo expediente es obligatorio.',
            'expediente.max' => 'El campo expediente no debe exceder los 250 caracteres.',
            'fecha.date' => 'El campo fecha debe ser una fecha válida.',
            'importe.required' => 'El campo importe es obligatorio.',
            'importe.numeric' => 'El campo importe debe ser un número.',
            'fecha_resolucion_admin.required' => 'El campo fecha de resolución administrativa es obligatorio.',
            'fecha_resolucion_admin.date' => 'El campo fecha de resolución administrativa debe ser una fecha válida.',
            
        ];
        $this->validate($request, $rules, $messages);
        // return response()->json(['status'=>'success','data'=>'Registro Creado'],200);
        
        if (request('noaperturado')=='on'){
            $administrado=true;
        }else{
            $administrado=false;
        }
        $obj = new expedientes();
        $obj->id_deudores=request('id_deudor');
        $obj->id_direcciones=request('oficina');
        $obj->concepto=request('concepto');
        $obj->monto=request('monto');
        $obj->expediente=request('expediente');
        $obj->fecha=request('fecha');
        $obj->uit=request('uit');
        $obj->importe=request('importe');
        $obj->resolucion_admin=request('resolucion_admin');
        $obj->fecha_resolucion_admin=request('fecha_resolucion_admin');
        $obj->noaperturado=$administrado;


        if ($request->hasFile('archivo')){
            $file = request('archivo')->getClientOriginalName();//archivo recibido
            $filename = pathinfo($file, PATHINFO_FILENAME);//nombre archivo sin extension
            $extension = request('archivo')->getClientOriginalExtension();//extensión
            $archivo= $filename.'_'.time().'.'.$extension;//
            request('archivo')->storeAs('expedientes/',$archivo,'public');//refiere carpeta publica es el nombre de disco
            $obj->archivo = $archivo;
        }

        $obj->save();

        return redirect()->route('index.expedientes')->with('mensaje','Expediente Creado!');
    }

    /**
     * Display the specified resource.
     */
    public function show($numero)
    {
        
        $expediente=DB::table('expedientes')
        ->leftjoin('deudores','deudores.id','=','expedientes.id_deudores')
        ->leftjoin('direcciones','direcciones.id','=','expedientes.id_direcciones')
        ->leftjoin('cronogramas','cronogramas.id_expedientes','=','expedientes.id')
        ->select(
            'expedientes.id',
            'deudores.nombre',
            'deudores.apellidos',
            'direcciones.nombre as direccion',
            'expedientes.concepto',
            'expedientes.monto',
            'expedientes.expediente',
            'expedientes.fecha',
            'expedientes.uit',
            'expedientes.importe',
            'expedientes.resolucion_admin',
            'expedientes.fecha_resolucion_admin',
            'expedientes.noaperturado',
            'expedientes.archivo',
            DB::raw('(IF(cronogramas.id > 0, true, false)) AS tiene_cronograma')
            )
        ->whereRaw('LEFT(expedientes.expediente, 8) = ?', [$numero])
        ->first();
        if (!$expediente) {
            return response()->json(['status'=>'error','message'=>'No existe expediente con el numero proporcionado'], 401);
        }else{
            return response()->json(['status'=>'success','data'=>$expediente], 200);
        }
        
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $oficinas=direcciones::all();
        $expediente=DB::table('expedientes')
        ->leftjoin('deudores','deudores.id','=','expedientes.id_deudores')
        ->leftjoin('direcciones','direcciones.id','=','expedientes.id_direcciones')
        ->leftjoin('cronogramas','cronogramas.id_expedientes','=','expedientes.id')
        ->select(
            'expedientes.id',
            'deudores.dni',
            'deudores.ruc',
            'deudores.nombre',
            'deudores.razon',
            'deudores.apellidos',
            'deudores.domicilio',
            'direcciones.id as id_direccion',
            'direcciones.nombre as direccion',
            'expedientes.concepto',
            'expedientes.monto',
            'expedientes.expediente',
            'expedientes.fecha',
            'expedientes.uit',
            'expedientes.importe',
            'expedientes.resolucion_admin',
            'expedientes.fecha_resolucion_admin',
            'expedientes.noaperturado',
            'expedientes.archivo',
            DB::raw('(IF(cronogramas.id > 0, true, false)) AS tiene_cronograma')
            )
        ->where('expedientes.id','=',$id)
        ->first();

        return view('expedientes.edit',compact('oficinas','expediente'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        $expediente_id=request('id_expediente');
        
        
        $rules = [
            'concepto' => 'required|string|max:250',
            'monto' => 'required|numeric',
            'expediente' => 'required|string|max:250',
            'fecha' => 'required|date',
            'uit' => 'required|numeric',
            'importe' => 'required|numeric',
            'fecha_resolucion_admin' => 'required|date',
        ];

        $messages = [
            
            'concepto.required' => 'El campo concepto es obligatorio.',
            'monto.required' => 'El campo monto es obligatorio.',
            'expediente.required' => 'El campo expediente es obligatorio.',
            'expediente.max' => 'El campo expediente no debe exceder los 250 caracteres.',
            'fecha.date' => 'El campo fecha debe ser una fecha válida.',
            'importe.required' => 'El campo importe es obligatorio.',
            'importe.numeric' => 'El campo importe debe ser un número.',
            'fecha_resolucion_admin.required' => 'El campo fecha de resolución administrativa es obligatorio.',
            'fecha_resolucion_admin.date' => 'El campo fecha de resolución administrativa debe ser una fecha válida.',
        ];
        $this->validate($request, $rules, $messages);

        if (request('noaperturado')=='on'){
            $administrado=true;
        }else{
            $administrado=false;
        }

        $obj = expedientes::findOrFail($expediente_id);
        $obj->id_direcciones=request('oficina');
        $obj->concepto=request('concepto');
        $obj->monto=request('monto');
        $obj->expediente=request('expediente');
        $obj->fecha=request('fecha');
        $obj->uit=request('uit');
        $obj->importe=request('importe');
        $obj->resolucion_admin=request('resolucion_admin');
        $obj->fecha_resolucion_admin=request('fecha_resolucion_admin');
        $obj->noaperturado=$administrado;


        if ($request->hasFile('archivo')){
            $file = request('archivo')->getClientOriginalName();//archivo recibido
            $filename = pathinfo($file, PATHINFO_FILENAME);//nombre archivo sin extension
            $extension = request('archivo')->getClientOriginalExtension();//extensión
            $archivo= $filename.'_'.time().'.'.$extension;//
            request('archivo')->storeAs('expedientes/',$archivo,'public');//refiere carpeta publica es el nombre de disco
            $obj->archivo = $archivo;
        }

        $obj->save();
                
        return redirect()->route('index.expedientes')->with('mensaje','Expediente Actualizado!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(coactivos $coactivos)
    {
        //
    }
}
