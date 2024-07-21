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


        <form class="p-4" action="{{route('store.ejecutado')}}" method="POST">@csrf
            <h5>Registro de Ejecutados</h5>
            <div class="row">
                <div class="col-md-4">
                    <label for="tipopersona" class="form-label">Tipo de persona</label>
                    <select id="tipopersona" name="tipopersona" class="form-select form-select-sm" required>
                        <option value="">--Seleccione--</option>
                        @foreach ($tipopersonas as $tp)
                            <option value="{{$tp->id}}">{{$tp->nombre}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="provincia" class="form-label">Provincia</label>
                    <select id="provincia" name="provincia" class="form-select form-select-sm" required>
                        <option value="">-- Seleccione ---</option>
                        @foreach ($provincias as $p)
                            <option value="{{$p->id}}">{{$p->nombre_provincia}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-4 mb-3">
                    <label for="distrito" class="form-label">Distrito</label>
                    <select id="distrito" name="distrito" class="form-select form-select-sm" required disabled>
                        <option value="">-- Seleccione ---</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 mb-3" id="classdni">
                    <label for="dni" class="form-label">N° DNI</label>
                    <div class="input-group">
                        <input id="dni" type="number" name="dni" placeholder="Ejemplo:73011422" class="form-control form-control-sm" value="">
                        <button type="button" class="btn btn-primary btn-sm" onclick="buscardni()">Buscar</button>
                    </div>
                </div>
                
                
                
                <div class="col-md-3 mb-3" id="classruc" hidden>
                    <label for="ruc" class="form-label">RUC</label>
                    <div class="input-group">
                        <input id="ruc" type="text" name="ruc" placeholder="Ejemplo: 20425619893" class="form-control form-control-sm" value="">
                        <button type="button" class="btn btn-primary btn-sm" onclick="buscarruc()">Buscar</button>
                    </div>
                </div>
                <div class="col-md-3 mb-3" id="classrazon" hidden>
                    <label for="ruc" class="form-label">Razón Social</label>
                    <input id="razon" type="text" name="razon" placeholder="Ejemplo: Inversiones Miriam" class="form-control form-control-sm" value="" >
                </div>
                <div class="col-md-3 mb-3" id="classcondicion" hidden>
                    <label for="condicion" class="form-label">Condición</label>
                    <strong><p id="condicion">--</p></strong>
                </div>
                <div class="col-md-3 mb-3" id="classdni_rep" hidden>
                    <label for="dni_rep" class="form-label">Dni Representante</label>
                    <input id="dni_rep" type="text" name="dni_rep" placeholder="Ejemplo: 45556569" class="form-control form-control-sm" value="">
                </div>
                <div class="col-md-6 mb-3" id="classnombre_rep" hidden>
                    <label for="nombre_rep" class="form-label">Nombre Representante</label>
                    <input id="nombre_rep" type="text" name="nombre_rep" placeholder="Ejemplo: 20425619893" class="form-control form-control-sm" value="">
                </div>
                <div class="col-md-6 mb-3" id="classapellidos_rep" hidden>
                    <label for="ruapellidos_repc" class="form-label">Apellidos Representante</label>
                    <input id="apellidos_rep" type="text" name="apellidos_rep" placeholder="Ejemplo: Inversiones Miriam" class="form-control form-control-sm" value="">
                </div>


                <div class="col-md-4 mb-3" id="classnombre">
                    <label for="nombre" class="form-label">Nombres</label>
                    <input id="nombre" type="text" name="nombre" placeholder="Ejemplo: Nicolás Arjen" class="form-control form-control-sm"  value="">
                </div>
                <div class="col-md-4 mb-3" id="classapellidos">
                    <label for="apellidos" class="form-label">Apellidos</label>
                    <input id="apellidos" type="text" name="apellidos" placeholder="Ejemplo: Martinez Montoya" class="form-control form-control-sm" value="">
                </div>
                
                <div class="col-md-6 mb-3">
                    <label for="domicilio" class="form-label">Domicilio</label>
                    <input id="domicilio" type="text" name="domicilio" placeholder="Ejemplo: Calle los Girasoles Mz. C Lte. 29" class="form-control form-control-sm" required value="">
                </div>
            </div>
            
            <div class="col-md-4">
                <button type="submit" class="btn btn-primary btn-sm">Registrar</button>
            </div>
        </form>
    </div>
</div>

    
@endsection

@section('js')
    <script>

       function buscardni() {
        
           $.ajax({
                type: "GET",
                url: "https://apiperu.dev/api/dni/"+ $("#dni").val() +"?api_token=77694cf849cca667ae28f9edbedd38c1314406a2465ee3758ff77ba9e894b4d5",
                data: "json",
                // beforeSend: function() {
                //     $("#spinner_apoderado").prop('hidden',false);
                // }
                
                success: function (response) {
                    
                    $("#nombre").val( response.data['nombres']);
                    $("#apellidos").val(response.data['apellido_paterno'] + " " + response.data['apellido_materno'])
    
                    //$("#spinner_apoderado").prop('hidden',true);
                },
                error: function (response) {  
                    //$("#spinner_apoderado").prop('hidden',true);
                }
            });

        }
       
        function buscarruc() {
        
        $.ajax({
             type: "GET",
             url: "https://apiperu.dev/api/ruc/"+ $("#ruc").val() +"?api_token=77694cf849cca667ae28f9edbedd38c1314406a2465ee3758ff77ba9e894b4d5",
             data: "json",
             // beforeSend: function() {
             //     $("#spinner_apoderado").prop('hidden',false);
             // }
             
             success: function (response) {
                $("#condicion").text(response.data['condicion']);
                $("#razon").val(response.data['nombre_o_razon_social']);
                 $("#domicilio").val(response.data['direccion_completa']);
                //  $("#apellidos").val(response.data['apellido_paterno'] + " " + response.data['apellido_materno'])
 
                 //$("#spinner_apoderado").prop('hidden',true);
             },
             error: function (response) {  
                 //$("#spinner_apoderado").prop('hidden',true);
             }
         });

     }
    
 </script>

    </script>

    
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
            var selectedValue = $(this).val();
            if (selectedValue=="2") {
                $('#classruc').removeAttr('hidden');
                $('#classrazon').removeAttr('hidden');
                $('#classdni_rep').removeAttr('hidden');
                $('#classnombre_rep').removeAttr('hidden');
                $('#classapellidos_rep').removeAttr('hidden');
                $('#classcondicion').removeAttr('hidden');

                $('#classdni').attr('hidden',true);
                $('#classnombre').attr('hidden',true);
                $('#classapellidos').attr('hidden',true);

            }else{
                $('#classruc').attr('hidden', true);
                $('#classrazon').attr('hidden', true);
                $('#classdni_rep').attr('hidden', true);
                $('#classnombre_rep').attr('hidden', true);
                $('#classapellidos_rep').attr('hidden', true);
                $('#classcondicion').attr('hidden', true);

                $('#classdni').removeAttr('hidden');
                $('#classnombre').removeAttr('hidden');
                $('#classapellidos').removeAttr('hidden');
                
            }


         });
    </script>
@endsection