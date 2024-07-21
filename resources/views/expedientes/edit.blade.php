@extends('bases.base')
@section('content')
<div class="card">
    <div class="card-body">
        @if ($errors->any())
        @foreach ($errors->all() as $error)
            <div class="col-sm-4">
                <div class="alert border-0 border-start border-5 border-success alert-dismissible fade show py-2">
                    <div class="d-flex align-items-center">
                        <div class="font-35 text-success"><i class='bx bxs-check-circle'></i>
                        </div>
                    <div class="ms-3">
                            <h6 class="mb-0 text-success">Mensaje</h6>
                            <div>{{ $error }}</div>
                        </div>
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </div>
        @endforeach
    @endif
    <form action="{{ route('update.expediente') }}" method="POST" class="p-4" enctype="multipart/form-data">@csrf
        <h1 class="text-2xl font-bold mb-6 text-center md:text-left">Editar Expediente</h1>

        <div class="row">
            <h5>Datos del Ejecutado</h5>
            <input type="text" name="id_expediente" id="id_expediente" value="{{$expediente->id}}" hidden>
            <label for="doc" class="form-label">DNI/RUC</label>
            <p hidden id="MensajeBusqueda" style="color: red"></p>
            <div class="col-md-4 d-flex align-items-end">
                <div class="input-group">
                    <input type="text" class="form-control form-control-sm" id="doc" name="doc" placeholder="dni/ruc" value="{{$expediente->dni}}{{$expediente->ruc}}" required readonly>
                    {{-- <button onclick="btnBuscarEjecutado()" class="btn btn-primary" type="button">Buscar</button> --}}
                </div>
            </div>
            
            
            <div class="col-md-4">
                <label for="nombre" class="form-label">Nombre/Razon</label>
                <input type="text" class="form-control form-control-sm" id="nombre" name="nombre" placeholder="Nombre del deudor" value="{{$expediente->nombre}} {{$expediente->razon}}" readonly>
            </div>
    
            <div class="col-md-4">
                <label for="apellidos" class="form-label">Apellidos</label>
                <input type="text" class="form-control form-control-sm" id="apellidos" name="apellidos" placeholder="Apellidos del deudor" value="{{$expediente->apellidos}}" readonly>
            </div>
    
            <div class="col-md-6">
                <label for="" class="form-label">Dirección</label>
                <input type="text" class="form-control form-control-sm" id="direccion" placeholder="Dirección del deudor" value="{{$expediente->domicilio}}" readonly>
            </div>
            <div class="col-md-6">
                <label for="" class="form-label">Oficina Sancionadora</label>
                <select name="oficina" id="oficina" class="form-select form-select-sm" required>
                    <option value="">--Seleccion Oficina--</option>
                    @foreach ($oficinas as $o)
                        @if ($expediente->id_direccion==$o->id)
                            <option value="{{$o->id}}" selected>{{$o->nombre}}</option>
                        @else
                            <option value="{{$o->id}}">{{$o->nombre}}</option>
                        @endif
                    @endforeach
                </select>
                
            </div>
            <br>
            <hr>
            <br>
            <h5>Datos del Expediente</h5>
            <div class="col-md-6">
                <label for="concepto" class="form-label">Concepto</label>
                <input type="text" class="form-control form-control-sm" id="concepto" name="concepto" placeholder="Concepto del expediente" value="{{$expediente->concepto}}" required>
            </div>
    
            <div class="col-md-3">
                <label for="monto" class="form-label">Monto</label>
                <input type="number" class="form-control form-control-sm" id="monto" name="monto" placeholder="Monto del expediente" value="{{$expediente->monto}}" required>
            </div>
    
            <div class="col-md-3">
                <label for="expediente" class="form-label">Número de Expediente</label>
                <input type="text" class="form-control form-control-sm" id="expediente" name="expediente" placeholder="Número de expediente" value="{{$expediente->expediente}}" required>
            </div>
    
            <div class="col-md-3">
                <label for="fecha" class="form-label">Fecha del Expediente</label>
                <input type="date" class="form-control form-control-sm" id="fecha" name="fecha" value="{{$expediente->fecha}}" required>
            </div>
    
            <div class="col-md-3">
                <label for="uit" class="form-label">UIT</label>
                <input type="number" step="0.01" class="form-control form-control-sm" id="uit" name="uit" placeholder="UIT del expediente" value="{{$expediente->uit}}" required>
            </div>
    
            <div class="col-md-3">
                <label for="importe" class="form-label">Importe</label>
                <input type="number" step="0.01" class="form-control form-control-sm" id="importe" name="importe" placeholder="Importe del expediente" value="{{$expediente->importe}}" required>
            </div>
    
            <div class="col-md-3">
                <label for="resolucion_admin" class="form-label">Resolución Administrativa</label>
                <input type="text" class="form-control form-control-sm" id="resolucion_admin" name="resolucion_admin" placeholder="Resolución administrativa" value="{{$expediente->resolucion_admin}}" maxlength="250">
            </div>
    
            <div class="col-md-3">
                <label for="fecha_resolucion_admin" class="form-label">Fecha de Resolución Administrativa</label>
                <input type="date" class="form-control form-control-sm" id="fecha_resolucion_admin" name="fecha_resolucion_admin" value="{{$expediente->fecha_resolucion_admin}}">
            </div>
    
            <div class="col-md-3">
                <br>
                <input type="checkbox" class="form-check-input" id="noaperturado" name="noaperturado" 
                    @if ($expediente->noaperturado)
                        checked
                    @endif
                >
                <label class="form-check-label" for="noaperturado" >Aperturado</label>
            </div>
    
            <div class="col-md-6">
                <label for="archivo" class="form-label">Archivo Adjunto</label>
                <input type="file" class="form-control form-control-sm" id="archivo" name="archivo">
                <a target="_blank" href="{{asset('storage/expedientes/'.$expediente->archivo)}}">{{$expediente->archivo}}</a>
                <p>Max. 20MB </p>
            </div>
    
            <div class="mb-3">
                <button type="submit" class="btn btn-primary btn-sm">Guardar</button>
            </div>
        </div>
    </form>

    </div>
</div>

@endsection

@section('js')
    <script>
        // function btnBuscarEjecutado() { 
        //     var doc=$("#doc").val();
        //     $.ajax({
        //         type: "GET",
        //         url: "/ejecutado/show/"+doc,
        //         dataType: "json",
        //         success: function (response) {
                    
        //             if (response.message) {
        //                 console.log("entro a messaage")
        //                 $("#MensajeBusqueda").text("No se encontró el documento, intente nuevamente");
        //                 $("#MensajeBusqueda").prop('hidden',false);
        //                 $("#nombre").val("");
        //                 $("#apellidos").val("");
        //                 $("#direccion").val("");
        //             }else{
        //                 $("#MensajeBusqueda").text("");
        //                 $("#MensajeBusqueda").prop('hidden',true);
        //                 $("#id_deudor").val(response.data.id);
        //                 $("#nombre").val(response.data.nombre);
        //                 $("#apellidos").val(response.data.apellidos);
        //                 $("#direccion").val(response.data.domicilio);
        //             }

                
        //         }
        //     });
        //  }
    </script>
@endsection