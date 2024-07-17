@extends('bases.base')
@section('content')
<div class="card">
    <div class="card-body">

        <form class="p-4" action="{{route('update.ejecutado')}}" method="POST">@csrf
            <h5 class="h2 mb-4 text-center text-md-start">Editar Ejecutado</h5>
            <input type="text" name="id_deudor" value="{{$deudores->id_deudor}}" hidden>
            <div class="row mb-3">
                <div class="col-md-6 mb-3">
                    <label for="tipoPersonas" class="form-label">Tipo de persona</label>
                    <select id="tipopersona" name="tipopersona" class="form-select" required>
                        
                        @foreach ($tipopersonas as $tp)
                            @if ($tp->id==$deudores->id_tipopersonas)
                                <option value="{{$tp->id}}" selected>{{$tp->nombre}}</option>
                            @else
                                <option value="{{$tp->id}}">{{$tp->nombre}}</option>
                            @endif
                        @endforeach
                    </select>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="provincia" class="form-label">Provincia</label>
                    <select id="provincia" name="provincia" class="form-select" required>
                        @foreach ($provincias as $p)
                            @if ($p->id==$deudores->id_provincia)
                                <option value="{{$p->id}}" selected>{{$p->nombre_provincia}}</option>
                            @else
                                <option value="{{$p->id}}">{{$p->nombre_provincia}}</option>
                            @endif

                        @endforeach
                        
                    </select>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="distrito" class="form-label">Distrito</label>
                    <select id="distrito" name="distrito" class="form-select" required>
                        @foreach ($distritos as $d)
                            @if ($d->id_provincias==$deudores->id_provincia)
                                @if ($d->id==$deudores->id_distrito)
                                    <option value="{{$d->id}}" selected>{{$d->nombre_distrito}}</option>
                                @else
                                    <option value="{{$d->id}}" >{{$d->nombre_distrito}}</option>
                                @endif
                            @endif
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-6 mb-3" id="classdni">
                    <label for="dni" class="form-label">N° DNI</label>
                    <input id="dni" type="number" name="dni" placeholder="Ejemplo:73011422" class="form-control" value="{{$deudores->dni}}">
                </div>
                <div class="col-md-6 mb-3 d-flex align-items-end">
                    <button type="button" class="btn btn-primary d-flex align-items-center justify-content-center w-100">
                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" class="me-2" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                            <path d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path>
                        </svg>
                        Buscar
                    </button>
                </div>
                
                <div class="col-md-6 mb-3" id="classruc" hidden>
                    <label for="ruc" class="form-label">RUC</label>
                    <input id="ruc" type="text" name="ruc" placeholder="Ejemplo: 20425619893" class="form-control" value="{{$deudores->ruc}}">
                </div>
                <div class="col-md-6 mb-3" id="classrazon" hidden>
                    <label for="ruc" class="form-label">Razón Social</label>
                    <input id="razon" type="text" name="razon" placeholder="Ejemplo: Inversiones Miriam" class="form-control" value="{{$deudores->razon}}">
                </div>
                <div class="col-md-6 mb-3" id="classdni_rep" hidden>
                    <label for="dni_rep" class="form-label">Dni Representante</label>
                    <input id="dni_rep" type="text" name="dni_rep" placeholder="Ejemplo: 45556569" class="form-control" value="{{$deudores->dni_rep}}">
                </div>
                <div class="col-md-6 mb-3" id="classnombre_rep" hidden>
                    <label for="nombre_rep" class="form-label">Nombre Representante</label>
                    <input id="nombre_rep" type="text" name="nombre_rep" placeholder="Ejemplo: 20425619893" class="form-control" value="{{$deudores->nombre_rep}}">
                </div>
                <div class="col-md-6 mb-3" id="classapellidos_rep" hidden>
                    <label for="ruapellidos_repc" class="form-label">Apellidos Representante</label>
                    <input id="apellidos_rep" type="text" name="apellidos_rep" placeholder="Ejemplo: Inversiones Miriam" class="form-control" value="{{$deudores->apellidos_rep}}">
                </div>


                <div class="col-md-6 mb-3" id="classnombre">
                    <label for="nombre" class="form-label">Nombres</label>
                    <input id="nombre" type="text" name="nombre" placeholder="Ejemplo: Nicolás Arjen" class="form-control"  value="{{$deudores->nombre}}">
                </div>
                <div class="col-md-6 mb-3" id="classapellidos">
                    <label for="apellidos" class="form-label">Apellidos</label>
                    <input id="apellidos" type="text" name="apellidos" placeholder="Ejemplo: Martinez Montoya" class="form-control" value="{{$deudores->apellidos}}">
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-6 mb-3">
                    <label for="domicilio" class="form-label">Domicilio</label>
                    <input id="domicilio" type="text" name="domicilio" placeholder="Ejemplo: Calle los Girasoles Mz. C Lte. 29" class="form-control" required value="{{$deudores->domicilio}}">
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <button type="submit" class="btn btn-success d-flex align-items-center">
                    <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 512 512" class="me-2" height="1em" width="1em" xmlns="http://www.w3.org/2000/svg">
                        <path d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm144 276c0 6.6-5.4 12-12 12h-92v92c0 6.6-5.4 12-12 12h-56c-6.6 0-12-5.4-12-12v-92h-92c-6.6 0-12-5.4-12-12v-56c0-6.6 5.4-12 12-12h92v-92c0-6.6 5.4-12 12-12h56c6.6 0 12 5.4 12 12v92h92c6.6 0 12 5.4 12 12v56z"></path>
                    </svg>
                    Registrar
                </button>
            </div>
        </form>
    </div>
</div>

    
@endsection

@section('js')
<script>
    $("#provincia").change(function (e) { 
        e.preventDefault();
        $.ajax({
            type: "GET",
            url: "/distritos",
            dataType: "json",
            success: function (response) {
                var select = $('#distrito');
                var id_provincia = $("#provincia").val();
                select.empty(); // Vaciar el select antes de llenarlo
                select.append('<option value="">-- Seleccione ---</option>'); // Añadir una opción por defecto
                response.data.forEach(element => {
                    if (id_provincia==element.id_provincias) {
                        select.append('<option value="' + element.id + '">' + element.nombre_distrito + '</option>');
                    }
                });
                select.removeAttr('disabled'); // Habilitar el select después de llenarlo
            }
        });
    });
</script>

<script>
    $("#tipopersona").change(function (e) { 
       mostrar_inputs();
    });
</script>

<script>
    $(document).ready(function() {
        mostrar_inputs();
    });
</script>

<script>
    function mostrar_inputs(){
        var selectedValue = $("#tipopersona").val();
       if (selectedValue=="2") {
           $('#classruc').removeAttr('hidden');
           $('#classrazon').removeAttr('hidden');
           $('#classdni_rep').removeAttr('hidden');
           $('#classnombre_rep').removeAttr('hidden');
           $('#classapellidos_rep').removeAttr('hidden');

           $('#classdni').attr('hidden',true);
           $('#classnombre').attr('hidden',true);
           $('#classapellidos').attr('hidden',true);

       }else{
           $('#classruc').attr('hidden', true);
           $('#classrazon').attr('hidden', true);
           $('#classdni_rep').attr('hidden', true);
           $('#classnombre_rep').attr('hidden', true);
           $('#classapellidos_rep').attr('hidden', true);
           
           $('#classdni').removeAttr('hidden');
           $('#classnombre').removeAttr('hidden');
           $('#classapellidos').removeAttr('hidden');           
       }
    }
</script>
@endsection