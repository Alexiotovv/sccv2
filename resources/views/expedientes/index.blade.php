@extends('bases.base')
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

        <div class="container">
            <h5>Lista de Expedientes</h5>
            <a href="{{route('create.expediente')}}" class="btn btn-primary btn-sm">Nuevo Expediente</a>
            <br>
            <br>
            <div class="table-responsive">
                <table id="expedientesTable" class="table table-striped table-bordered" style="width:100%">
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
                            <th>No Aperturado</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($expedientes as $expediente)
                        <tr>
                            <td>{{ $expediente->id }}</td>
                            <td>
                                <a data-bs-toggle="tooltip" title="editar expediente" href="{{ route('edit.expediente', ['id' => $expediente->id]) }}" class="btn btn-warning btn-sm">
                                    <i data-feather="edit-2"></i>
                                </a>
                                @if ($expediente->archivo)
                                    <a data-bs-toggle="tooltip" title="Ver expediente escaneado" target="_blank" href="{{asset('storage/expedientes/'.$expediente->archivo)}}" class="btn btn-info btn-sm"><i data-feather="file-text"></i></a>
                                    
                                @endif
                                <a onclick="cronograma('{{$expediente->id}}')" class="btn btn-success btn-sm" data-bs-toggle="tooltip" title="Ver cronograma"><i data-feather="calendar"></i></a>
                                
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
</div>



{{-- Modal Cronograma --}}
<div class="modal fade" id="modalCronograma" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Información de Cronograma</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            
                <div class="modal-body">
                    
                    <div class="row">
                        <h5>Datos del Ejecutado</h5>
                        <div class="col-md-6">
                            <label for="">Ejecutado</label>
                            <i data-feather="user-minus"></i>
                            <strong><p id="ejecutado"></p></strong>
                        </div>
                        <div class="col-md-6">
                            <label for="">Concepto de Multa</label>
                            <i data-feather="file-plus"></i>
                            <strong><p id="concepto"></p></strong>
                        </div>

                        <div class="col-md-6">
                            <label for="">Expediente</label>
                            <i data-feather="file-minus"></i>
                            <strong><p id="expediente"></p></strong>
                        </div>
                        <div class="col-md-6">
                            <label for="">Entidad Sancionadora</label>
                            <i class="fas fa-house-damage"></i>
                            <strong><p id="entidad_sancionadora"></p></strong>
                        </div>
                    </div>
                    <hr>
                    <h5>Datos del Cronograma</h5>
                    <button class="btn btn-light btn-sm" id="btnCrearCronograma" onclick="crearCronograma()"><i class="fas fa-calendar-alt"> Crear Cronograma</i></button>
                    <div class="table-responsive">
                        <table id="dtCronograma" class="table table-striped table-bordered" style="width:100%">                            
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>ACCION</th>
                                <th>FECHA INICIAL DE PAGO</th>
                                <th>MONTO A PAGAR</th>
                                <th>NÚMERO DE CUOTAS</th>
                                <th>INTERÉS APLICADO</th>
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
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Salir de Cronograma</button>
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
                    <form id="formCronograma" method="POST">@csrf
                        <div class="row">
                            <div class="col-md-6">
                                <input type="text" name="id_expediente" id="id_expediente" hidden>
                                <label for="">Número de Cuotas</label>
                                <input type="number" name="numero_cuotas" class="form-control form-control-sm" required>
                            </div>
                            <div class="col-md-6">
                                <label for="">Monto a Pagar</label>
                                <input type="number" name="monto_pagar" class="form-control form-control-sm" required>
                            </div>

                            <div class="col-md-6">
                                <label for="">Interes Aplicado %</label>
                            <input type="number" step="0.01" name="interes_aplicado" class="form-control form-control-sm" required>
                        </div>
                        <div class="col-md-6">
                            <label for="">Fecha Inicial de Pago</label>
                            <input type="date" name="fecha_inicial_pago" class="form-control form-control-sm" required>
                        </div>
                        </div>

                        <div class="content" style="text-align: center">
                            
                            <button id="btnAgregarCronograma" class="btn btn-light btn-sm"><i class="fas fa-plus"></i> Agregar Cronograma</button>
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Salir de Agregar Cronograma</button>
                    {{-- <button type="submit" class="btn btn-primary">Guardar</button> --}}
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
                        "<td>"+'<button class="btn btn-light btn-sm btnPagos"><i class="fas fa-money-bill-alt"></i> Pagos</button>'+"</td>"+ 
                        "<td>"+element.fecha_inicial_pago+"</td>"+ 
                        "<td>"+element.monto_pagar+"</td>"+
                        "<td>"+element.numero_cuotas+"</td>"+
                        "<td>"+element.interes_aplicado+"</td>"+
                        "<td>"+
                            estadoTexto
                            +"</td>"+
                        "</tr>"
                        );
                    });

                }
            });
         }

        function crearCronograma() {
            $("#modalCrearCronograma").modal('show');
        }

        $("#btnAgregarCronograma").on("click",function (e) {
            e.preventDefault();
            ds=$("#formCronograma").serialize();
            id=$("#id_expediente").val();
            $.ajax({
                type: "POST",
                url: "/cronogramas/store",
                data: ds,
                dataType: "json",
                success: function (response) {
                    llenarDataTableCronograma(id);
                }
            });

            $("#modalCrearCronograma").modal('hide');

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
                    response.data.forEach(element => {
                        numero += 1;
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
                            "<td>" + numero + "</td>" +
                            "<td>" + element.monto + "</td>" +
                            "<td>" + element.metodo + "</td>" +
                            "<td>" + estado + "</td>" +
                            "<td>" + element.fecha + "</td>" +
                            "<td>" + element.hora + "</td>" +
                            "<td>" + archivo + "</td>" +
                            "</tr>"
                        );
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


    </script>
@endsection