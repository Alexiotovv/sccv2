@extends('bases.base')
@section('css')
#total_pagado {
    display: inline;
  }
  
  strong {
    display: inline;
  }
  
@endsection
@section('content')
<div class="card">
    <div class="card-body">
        @if(session()->has('mensaje'))
        <div class="col-sm-4">
            <div class="alert border-0 border-start border-5 border-success alert-dismissible fade show py-2">
                <div class="d-flex align-items-center">
                    <div class="font-35 text-success"><i class='bx bxs-check-circle'></i>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0 text-success">Mensaje</h6>
                        <div>{{Session::get('mensaje')}}</div>
                    </div>
                </div>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </div>
    @endif

        
    <h5>Lista de Expedientes</h5>
    <a href="{{route('create.expediente')}}" class="btn btn-primary btn-sm">Nuevo Expediente</a>
    <br>
    <br>
    <div class="table-responsive">
        <table id="expedientesTable" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Acciones</th>
                    <th>DNI/RUC</th>
                    <th>NombreCompleto</th>
                    <th>NombreCompleto_Representante</th>
                    <th>Oficina</th>
                    <th>Concepto</th>
                    <th>Monto</th>
                    <th>Expediente</th>
                    <th>Fecha</th>
                    <th>UIT</th>
                    <th>Importe</th>
                    <th>Resolución Admin</th>
                    <th>Fecha Resolución Admin</th>
                    <th>Aperturado</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($expedientes as $expediente)
                <tr>
                    <td>{{ $expediente->id }}</td>
                    <td>
                        <a data-bs-toggle="tooltip" title="editar expediente" href="{{ route('edit.expediente', ['id' => $expediente->id]) }}" class="btn btn-light btn-sm">
                            <i data-feather="edit-2"></i>
                        </a>
                        <a onclick="cronograma('{{$expediente->id}}')" class="btn btn-light btn-sm" data-bs-toggle="tooltip" title="Ver cronograma"><i data-feather="calendar"></i></a>
                        <a onclick="vregistral('{{$expediente->id}}')" class="btn btn-light btn-sm" data-bs-toggle="tooltip" title="Verificación Registral"><i class="fas fa-map-marked-alt"></i></a>
                        @if ($expediente->archivo)
                            <a data-bs-toggle="tooltip" title="Ver expediente escaneado" target="_blank" href="{{asset('storage/expedientes/'.$expediente->archivo)}}" class="btn btn-light btn-sm"><i data-feather="file-text"></i></a>
                            
                        @endif
                    </td>
                    <td>{{$expediente->dni}}{{$expediente->ruc}}</td>
                    <td>{{ $expediente->nombre }}-{{ $expediente->apellidos }}</td>
                    <td>{{ $expediente->nombre_rep }}-{{ $expediente->apellidos_rep }}</td>                     
                    <td>{{ $expediente->direccion }}</td>
                    <td>{{ $expediente->concepto }}</td>
                    <td>{{ $expediente->monto }}</td>
                    <td>{{ $expediente->expediente }}</td>
                    <td>{{ $expediente->fecha }}</td>
                    <td>{{ $expediente->uit }}</td>
                    <td>{{ $expediente->importe }}</td>
                    <td>{{ $expediente->resolucion_admin }}</td>
                    <td>{{ $expediente->fecha_resolucion_admin }}</td>
                    <td>{{ $expediente->noaperturado ? 'Sí' : 'No' }}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>

        
    </div>
</div>

{{-- Modal Cronograma --}}
<div class="modal fade" id="modalCronograma" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Información de Cronograma-</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            
                <div class="modal-body">
                    
                    <div class="row">
                        <h5>Datos del Ejecutado</h5>
                        <div class="col-md-4">
                            <label for="">Ejecutado</label>
                            <i data-feather="user-minus"></i>
                            <strong><p id="ejecutado"></p></strong>
                        </div>
                        <div class="col-md-4">
                            <label for="">Concepto</label>
                            <i data-feather="file-plus"></i>
                            <strong><p id="concepto"></p></strong>
                        </div>
                        <div class="col-md-4">
                            <label for="">Monto de Deuda</label>
                            <i data-feather="file-plus"></i>
                            <strong><p id="monto_expediente"></p></strong>
                        </div>

                        <div class="col-md-4">
                            <label for="">Expediente</label>
                            <i data-feather="file-minus"></i>
                            <strong><p id="expediente"></p></strong>
                        </div>
                        <div class="col-md-4">
                            <label for="">Entidad Sancionadora</label>
                            <i class="fas fa-house-damage"></i>
                            <strong><p id="entidad_sancionadora"></p></strong>
                        </div>
                    </div>
                    <hr>
                    <h5>Datos del Cronograma</h5>
                    <button class="btn btn-light btn-sm" id="btnCrearCronograma" onclick="crearCronograma()"><i class="fas fa-calendar-alt"> Crear Cronograma</i></button>
                    <div class="table-responsive">
                        <br>
                        <table id="dtCronograma" class="table table-striped table-bordered" style="width:100%">                            
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>ACCION</th>
                                <th>FECHA INICIAL DE PAGO</th>
                                <th>MONTO PAGAR</th>
                                <th>N°CUOTAS</th>
                                <th>% APLICADO</th>
                                <th>ESTADO</th>
                            </tr>
                            </thead>
                            <tbody>
                            
                            <!-- Add more rows as needed -->
                            </tbody>
                        </table>
                    </div>
                      <hr>
                      


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Salir de Cronograma</button>
                    {{-- <button type="submit" class="btn btn-primary">Guardar</button> --}}
                </div>

            
        </div>
    </div>
</div>

{{-- Modal Crear Cronograma --}}
<div class="modal fade" id="modalCrearCronograma" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Agregar Cronograma de Pago</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            
            <div class="modal-body">
                    <form id="formCronograma" enctype="multipart/form-data">@csrf
                        <div class="row">
                            <div class="col-md-4">
                                <label for="monto_deuda">Monto Deuda</label>
                                S/<input type="text" value="0.00" id="monto_deuda" name="monto_deuda" class="form-control form-control-sm" readonly>
                            </div>
                            <div class="col-md-4">
                                <label for="interes_aplicado">Interes Aplicado %</label>
                                <input type="number" step="0.01" onkeyup="change_interes_aplicado()" value="0.00" id="interes_aplicado" name="interes_aplicado" class="form-control form-control-sm" required>
                            </div>
                            <div class="col-md-4">
                                <input type="text" name="id_expediente" id="id_expediente" hidden>
                                <label for="numero_cuotas">Número de Cuotas</label>
                                <input type="number" name="numero_cuotas" onkeyup="change_numero_cuotas()" id="numero_cuotas" value="1" class="form-control form-control-sm" required>
                            </div>
                            <div class="col-md-4">
                                <label for="monto_cuota">Monto de Cuota</label>
                                <input type="text" step="0.01" name="monto_cuota" id="monto_cuota" value="0" class="form-control form-control-sm" required readonly>
                            </div>

                        <div class="col-md-4">
                            <label for="fecha_inicial_pago">Fecha Inicial de Pago</label>
                            <input type="date" name="fecha_inicial_pago" id="fecha_inicial_pago" class="form-control form-control-sm" required>
                        </div>
                        </div>

                        <div class="content" style="text-align: center">
                            <br>
                            <button type="submit" id="btnAgregarCronograma" class="btn btn-light btn-sm"><i class="fas fa-plus"></i> Agregar Cronograma</button>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Salir de Agregar Cronograma</button>
                    
                </div>

            
        </div>
    </div>
</div>

{{-- Modal Pagos --}}
<div class="modal fade" id="modalPagos" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Realizar Pagos</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            
                <div class="modal-body">
                    <form id="formPagos" enctype="multipart/form-data">@csrf
                        <div class="row">
                            <div class="col-md-6">
                                <input type="text" name="id_cronograma" id="id_cronograma" hidden>
                                <label for="">Monto</label>
                                <input type="number" step="0.01" name="monto" id="monto" class="form-control form-control-sm" required>
                            </div>
                            <div class="col-md-6">
                                <label for="">Método</label>
                                <select name="metodo" id="metodo" class="form-select form-select-sm">
                                    <option value="EFECTIVO">EFECTIVO</option>
                                    <option value="TARJETA">TARJETA</option>
                                    
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label for="">Estado</label>
                                <select name="estado" id="estado" class="form-select form-select-sm">
                                    <option value="2">COMPLETO</option>
                                    <option value="1">PENDIENTE</option>
                                    <option value="3">PARCIALMENTE PAGADO</option>
                                </select>
                        </div>
                        <div class="col-md-6">
                            <label for="">Comprobante</label>
                            <input type="file" id="archivo" name="archivo" class="form-control form-control-sm" required>
                        </div>
                        </div>
                        <br>
                        <div class="content" style="text-align: center">
                            <button id="btnAgregarPago" class="btn btn-light btn-sm"><i class="fas fa-plus"></i> Agregar Pago</button>
                        </div>
                    </form>
                    
                    <div class="table-responsive">
                        <i class="fas fa-money-check-alt">
                            <strong>Total Pagado S/<span id="total_pagado"></span></strong>
                          </i>
                          
                        <br>
                        <table id="dtPagos" class="table table-striped table-bordered" style="width:100%">                            
                            <thead>
                            <tr>
                                <th>N°</th>
                                <th>MONTO</th>
                                <th>MÉTODO</th>
                                <th>ESTADO</th>
                                <th>FECHA</th>
                                <th>HORA</th>
                                <th>DOCUMENTO</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>



                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Salir de Pagos</button>
                    {{-- <button type="submit" class="btn btn-primary">Guardar</button> --}}
                </div>

            
        </div>
    </div>
</div>

{{-- Modal Verificación Registral --}}
<div class="modal fade" id="modalVregistral" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Verificación Registral</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            
                <div class="modal-body">
                    <form id="formVregistral" enctype="multipart/form-data">@csrf
                        <div class="row">
                            <div class="col-md-6">
                                <input type="text" name="id_expediente_vr" id="id_expediente_vr" readonly hidden>
                                <label for="prescrito">Prescrito</label>
                                <select name="prescrito" id="prescrito" class="form-select form-select-sm" required>
                                    <option value="">--Seleccione--</option>
                                    <option value="SI">SI</option>
                                    <option value="NO">NO</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="estado">Estado</label>
                                <textarea name="estado_vregistral" id="estado_vregistral" class="form-control form-control-sm" maxlength="250" required></textarea>
                            </div>
                            <div class="col-md-6">
                                <label for="observaciones">Observacion</label>
                                <textarea name="observaciones" id="observaciones" class="form-control from-control-sm" maxlength="250">-</textarea>
                            </div>
                        </div>
                        <br>
                        <div class="content" style="text-align: center">
                            <button type="submit" class="btn btn-light btn-sm btnAgregarVregistral"><i class="fas fa-plus"></i> Agregar Verificación Registral</button>
                        </div>
                        
                    </form>
                    
                    <div class="table-responsive">
                        <br>
                        <table id="dtVregistral" class="table table-striped table-bordered" style="width:100%">                            
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>PRESCRITO</th>
                                <th>ESTADO</th>
                                <th>OBSERVACIONES</th>
                                <th>FECHA REGISTRO</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>



                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Salir de V.Registral</button>
                    
                </div>

            
        </div>
    </div>
</div>

@include('modals.confirmar_eliminar')

@endsection

@section('js')
    <script>
        function cronograma(id) { 
            $("#id_expediente").val(id)
            $("#modalCronograma").modal('show');
            $.ajax({
                type: "GET",
                url: "/cronogramas/show/" + id,
                dataType: "json",
                success: function (response) {
                    
                    if (response && response.data) {
                        $("#ejecutado").text(response.data.nombre + " " + response.data.apellidos + " " + response.data.nombre_rep + " " + response.data.apellidos_rep);
                        $("#concepto").text(response.data.concepto);
                        let numero = parseFloat(response.data.monto);
                        let numero_formateado = numero.toLocaleString('en-US', { minimumFractionDigits: 2, maximumFractionDigits: 2 });
                        $("#monto_expediente").text("S/ "+ numero);
                        $("#monto_deuda").val(numero_formateado)
                        $("#expediente").text(response.data.expediente);
                        $("#entidad_sancionadora").text(response.data.entidad_sancionadora);
                    } else {
                        alert("la estructura no coincide");
                        // Puedes agregar lógica adicional para manejar el caso de datos faltantes o incorrectos
                    }
                },
                error: function (xhr, status, error) {
                    alert("Error al procesar la solicitud:", error);
                    // Puedes agregar lógica para manejar errores de red o del servidor
                }
            });


            llenarDataTableCronograma(id);

            
        }

        function llenarDataTableCronograma(id) { 
            
            $.ajax({
                type: "GET",
                url: "/cronogramas/index/"+id,
                dataType: "json",
                success: function (response) {
                    $("#dtCronograma tbody").html("");

                    if (response.length==0) {
                        $("#btnCrearCronograma").show();
                    }else{
                        $("#btnCrearCronograma").hide();
                    }
                    response.forEach(element => {
                        let estadoTexto = element.estado ? '<p style="color:green">CANCELADO</p>' : '<p style="color:red">PENDIENTE</p>';
                        
                        $("#dtCronograma tbody").append(
                        "<tr>"+
                        "<td>"+element.id+"</td>"+ 
                        "<td>"+
                            '<button class="btn btn-light btn-sm btnPagos" data-bs-toggle="tooltip" title="ver pagos"><i class="fas fa-money-bill-alt"></i> Pagos</button>'+
                        "</td>"+ 
                        "<td>"+element.fecha_inicial_pago+"</td>"+ 
                        "<td>"+element.monto_pagar+"</td>"+
                        "<td>"+element.numero_cuotas+"</td>"+
                        "<td>"+element.interes_aplicado+"</td>"+
                        "<td>"+ estadoTexto +"</td>"+
                        "<td>"+'<button class="btn btn-light btn-sm btnEliminarCronograma" data-bs-toggle="tooltip" title="eliminar cronograma"><i class="fas fa-trash-alt"></i></button>'+ "</td>"+
                        "</tr>"
                        );
                    });

                }
            });
         }

        function crearCronograma() {
            calcularPago();
            $("#modalCrearCronograma").modal('show');
        }

        $("#btnAgregarCronograma").on("click",function (e) {
            let interes_aplicado=$("#interes_aplicado").val().trim();
            let numero_cuotas=$("#numero_cuotas").val().trim();
            
            if (interes_aplicado.length===0 || numero_cuotas.length===0) {
                
            }else{
                e.preventDefault()
                guardarCronograma();
            }

        })

        $(document).on("click",".btnPagos",function (e) { 
            e.preventDefault();
            $("#modalPagos").modal('show');
            fila = $(this).closest("tr");
            id = (fila).find('td:eq(0)').text();
            monto = (fila).find('td:eq(3)').text();
            $("#id_cronograma").val(id);
            $("#monto").val(monto);
            llenaDataTablePagos(id);
        })

        function guardarCronograma(){
            id=$("#id_expediente").val();
            var form = $('#formCronograma')[0];
            var formData = new FormData(form);
            
            $.ajax({
                type: "POST",
                url: "/cronogramas/store",
                data: formData,
                contentType: false,
                processData: false,
                dataType: "json",
                success: function (response) {
                    llenarDataTableCronograma(id);
                    $("#modalCrearCronograma").modal('hide');
                },
                error: function(xhr) {
                    if (xhr.status === 422) {
                        let errors = xhr.responseJSON.data;
                        let errorMessages = Object.values(errors).map(errArray => errArray.join(' ')).join('\n');
                        alert('Errores:\n' + errorMessages);
                    } else {
                        alert('Error inesperado.');
                    }
                }
            });
            
        }


        function guardarPago() { 
            var form = $('#formPagos')[0];
            var formData = new FormData(form);
            var id_cronograma= $("#id_cronograma").val()
            $.ajax({
                type: "POST",
                url: "/pagos/store",
                data: formData,
                contentType: false,
                processData: false,
                dataType: "json",
                success: function (response) {
                    llenaDataTablePagos(id_cronograma);
                    llenarDataTableCronograma($("#id_expediente").val())
                }
            });
        }

        function llenaDataTablePagos(id) { 
            $.ajax({
                type: "GET",
                url: "/pagos/index/" + id,
                dataType: "json",
                success: function(response) {
                    $("#dtPagos tbody").html("");
                    var numero = 0;
                    var total_pagado = 0

                    response.data.forEach(element => {
                        total_pagado += parseFloat(element.monto)
                        var archivo = '';
                        var estado = false;
                        if (element.archivo) {
                            archivo = "<a target='_blank' href='/storage/comprobantes/" + element.archivo + "'>" + element.archivo + "</a>";
                        }

                        if (element.estado==1) {
                            estado='PENDIENTE'
                        }else if (element.estado==2){
                            estado='COMPLETO'
                        }else if(element.estado==3){
                            estado='PARCIALMENTE PAGADO'
                        }

                        $("#dtPagos tbody").append(
                            "<tr>" +
                                "<td>" + element.id + "</td>" +
                                "<td>" + element.monto + "</td>" +
                                "<td>" + element.metodo + "</td>" +
                                "<td>" + estado + "</td>" +
                                "<td>" + element.fecha + "</td>" +
                                "<td>" + element.hora + "</td>" +
                                "<td>" + archivo + "</td>" +
                                "<td>"+ 
                                    '<button class="btn btn-light btn-sm btnEliminarPago" data-bs-toggle="tooltip" title="eliminar pago"><i class="fas fa-trash-alt"></i></button>'+
                                "</td>"+
                            "</tr>"
                        );
                    });
                    $("#total_pagado").text(total_pagado);
                }
            });
        }

        function vregistral(id) {
            $("#id_expediente_vr").val(id);
            $("#modalVregistral").modal('show');
            llenaDtVregistral();
        }

        

        $(document).on("click",".btnAgregarVregistral",function (e) { 
            let prescrito=$("#prescrito").val();
            let estado_vregistral=$("#estado_vregistral").val();
            
            if (prescrito.trim()==='' || estado_vregistral.trim()==='') {
                console.log("ambos vacios");
            }else{
                console.log("entro a registrar");
                e.preventDefault();
                ds=$("#formVregistral").serialize();
                $.ajax({
                    type: "POST",
                    url: "/vregistral/store",
                    data: ds,
                    dataType: "json",
                    success: function (response) {
                        console.log(response.data)
                        llenaDtVregistral();
                    }
                });
            }
         })
        

        function llenaDtVregistral() {
            var id_expediente= $("#id_expediente_vr").val();
            $.ajax({
                type: "GET",
                url: "/vregistral/index/"+id_expediente,
                dataType: "json",
                success: function (response) {
                    $("#dtVregistral tbody").html("");
                    response.data.forEach(element => {
                        $("#dtVregistral tbody").append("<tr>"+
                            "<td>" + element.id+"</td>"+
                            "<td>" + element.prescrito+"</td>"+
                            "<td>" + element.estado+"</td>"+
                            "<td>" + (element.observaciones ? element.observaciones : '') + "</td>"+    
                            "<td>" + element.created_at+"</td>"+
                            "<td>" + '<a class="btn btn-light btn-sm btnEliminarVregistral" data-bs-toggle="tooltip" title="eliminar vregistral"><i class="fas fa-trash-alt"></i></a>'+"</td>"+
    
                            +"</tr")
                        
                    });
                }
            });
        }

        $("#btnAgregarPago").on("click",function (e) {
            var monto=$("#monto").val();
            var archivo=$("#archivo").val();
            if ((monto).trim()=='') {
                
            }else{
                e.preventDefault();
                guardarPago();
            }
        })

        $(document).on("click",".btnEliminarVregistral",function (e) { 
            e.preventDefault();
            fila = $(this).closest("tr");
            id = (fila).find('td:eq(0)').text();
            $("#id_registro_eliminar").val(id);
            $("#nombre_modelo").val("vregistral");
            $("#modalEliminar").modal('show');
         })

        $(document).on("click",".btnEliminarPago",function (e) { 
            e.preventDefault()
            fila = $(this).closest("tr");
            id = (fila).find('td:eq(0)').text();
            $("#id_registro_eliminar").val(id);
            $("#nombre_modelo").val("pago");
            $("#modalEliminar").modal('show');
        })

        $(document).on("click",".btnEliminarCronograma",function (e) { 
            e.preventDefault();
            fila = $(this).closest("tr");
            id = (fila).find('td:eq(0)').text();
            $("#id_registro_eliminar").val(id);
            $("#nombre_modelo").val("cronograma");
            $("#modalEliminar").modal('show');
         })




        function btnSiEliminar() {
            nombre_modelo = $("#nombre_modelo").val();
            let id_expediente = $("#id_expediente").val();

            if (nombre_modelo=='vregistral') {

                id=$("#id_registro_eliminar").val();
                $.ajax({
                    type: "GET",
                    url: "/vregistral/destroy/"+id,
                    dataType: "json",
                    success: function (response) {
                        llenaDtVregistral();
                    }
                });

            }
            if(nombre_modelo=='pago'){
                
                let id=$("#id_registro_eliminar").val();
                let id_cronograma= $("#id_cronograma").val()
                $.ajax({
                    type: "GET",
                    url: "/pagos/destroy/"+id,
                    dataType: "json",
                    success: function (response) {
                        if (response.message=='noautorizado') {
                            alert(response.message +" "+ response.data)
                        }else{
                            llenaDataTablePagos(id_cronograma);
                            llenarDataTableCronograma(id_expediente)
                        }
                    }
                });
            }

            if(nombre_modelo=='cronograma'){
                let id=$("#id_registro_eliminar").val();
                $.ajax({
                    type: "GET",
                    url: "/cronogramas/destroy/"+id,
                    dataType: "json",
                    success: function (response) {
                            llenarDataTableCronograma(id_expediente)
                    },
                    error: function(xhr) {
                        if (xhr.status === 422) {
                            let response = xhr.responseJSON;
                            alert(response.data); // Muestra el mensaje de error
                        } else {
                            alert('Error inesperado: ' + xhr.statusText);
                        }
                    }

                });
            }



            $("#modalEliminar").modal('hide');
        }

    </script>
    <script src="../../../assets/js/plugins/jquery.dataTables.min.js"></script>
    <script src="../../../assets/js/plugins/dataTables.bootstrap4.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#expedientesTable').DataTable({
                columnDefs: [
                    { width: '200px', targets: 1 }
                ],
                fixedColumns: true
            });
        });
    </script>
    
    <script>
        function calcularPago() {
            let monto_deuda = $("#monto_deuda").val()
            let interes_aplicado = $("#interes_aplicado").val();
            let numero_cuotas = $("#numero_cuotas").val().trim();

            monto_deuda=monto_deuda.replace(/,/g, '');
            let monto_interes = parseFloat(monto_deuda) * (parseFloat(interes_aplicado/100)+1)
            
            let subtotal = monto_interes / parseFloat(numero_cuotas);

            let monto_cuota = subtotal.toLocaleString('en-US', { minimumFractionDigits: 2, maximumFractionDigits: 2 })
            
            $("#monto_cuota").val(monto_cuota)

        }

        function change_interes_aplicado() {
            calcularPago()
        }
        
    </script>
    <script>
        function change_numero_cuotas() {
            calcularPago()
        }
    </script>

    <script>
        $(document).ready(function() {
            let today = new Date();
            let nextMonth = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
            let formattedDate = nextMonth.toISOString().split('T')[0];
            $('#fecha_inicial_pago').val(formattedDate);
        });
    </script>
@endsection