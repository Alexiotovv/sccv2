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

        <div class="container mt-5">
            <h5 class="mb-4">Lista de Ejecutados</h5>
            <a href="{{route('create.ejecutado')}}" class="btn btn-primary btn-sm">Nuevo Ejecutado</a>
            <div class="table-responsive">
                <br>
                <table id="deudoresTable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>ID Deudor</th>
                            <th>Acciones</th>
                            <th>Tipo de Persona</th>
                            <th>Provincia</th>
                            <th>Distrito</th>
                            <th>DNI</th>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>RUC</th>
                            <th>Razón Social</th>
                            <th>Nombre Representante</th>
                            <th>Apellidos Representante</th>
                            <th>DNI Representante</th>
                            <th>Domicilio</th>
                            <th>Fecha de Registro</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($deudores as $deudor)
                        <tr>
                            <td>{{ $deudor->id_deudor }}</td>
                            <td>
                                <a href="{{route('edit.ejecutado',$deudor->id_deudor)}}" class="btn btn-warning btn-sm">
                                    <i data-feather="edit"></i>
                                </a>
                                @if(auth()->user()->role == 0)
                                    <a onclick="eliminarEjecutado({{$deudor->id_deudor}})" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>
                                @endif
                            </td>
                            <td>{{ $deudor->tipo_persona }}</td>
                            <td>{{ $deudor->provincia }}</td>
                            <td>{{ $deudor->distrito }}</td>
                            <td>{{ $deudor->dni }}</td>
                            <td>{{ $deudor->nombre }}</td>
                            <td>{{ $deudor->apellidos }}</td>
                            <td>{{ $deudor->ruc }}</td>
                            <td>{{ $deudor->razon }}</td>
                            <td>{{ $deudor->nombre_rep }}</td>
                            <td>{{ $deudor->apellidos_rep }}</td>
                            <td>{{ $deudor->dni_rep }}</td>
                            <td>{{ $deudor->domicilio }}</td>
                            <td>{{ $deudor->fecha_registro }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="d-flex justify-content-center mt-4">
                {{ $deudores->links('pagination::bootstrap-5') }}
            </div>
        </div>

    </div>
</div>


<div class="modal fade" id="modalEliminarEjecutado" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Eliminar Ejecutado</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="{{route('destroy.ejecutado')}}" method="POST">@csrf
                <div class="modal-body">
                    <input type="text" id="id_deudor" name="id_deudor" hidden>
                    <p>Confirme por favor para poder eliminar</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Salir</button>
                    <button type="submit" class="btn btn-danger btn-sm">Sí Eliminar</a>
                </div>

            </form>
        </div>
    </div>
</div>



@endsection
@section('js')
    <script>
        function eliminarEjecutado(id) { 
            $("#id_deudor").val(id);
            $("#modalEliminarEjecutado").modal('show');
        }
        
    </script>
@endsection