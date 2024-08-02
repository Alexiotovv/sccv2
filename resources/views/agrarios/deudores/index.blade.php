@extends('bases.base')
@section('content')

<div class="card">
    <div class="card-body">
        @if(session()->has('mensaje'))
            <div class="col-sm-4">
                <div class="alert border-0 border-start border-5 border-{{Session::get('color')}} alert-dismissible fade show py-2">
                    <div class="d-flex align-items-center">
                        <div class="font-35 text-{{Session::get('color')}}"><i class='bx bxs-check-circle'></i>
                        </div>
                        <div class="ms-3">
                            <h6 class="mb-0 text-{{Session::get('color')}}">Mensaje</h6>
                            <div>{{Session::get('mensaje')}}</div>
                        </div>
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </div>
        @endif

        
            <h5 class="mb-4">Lista de Personas</h5>
            <a href="{{route('create.deudor')}}" class="btn btn-primary btn-sm">Nuevo Ejecutado</a>
            <div class="table-responsive">
                <br>
                <table id="deudoresTable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Acciones</th>
                            <th>Provincia</th>
                            <th>Distrito</th>
                            <th>Nombres</th>
                            <th>Dirección DNI</th>
                            <th>Dirección Actual</th>
                            <th>DNI</th>
                            <th>Teléfono</th>
                            <th>Mercado</th>
                            <th>Actividad</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($deudores as $deudor)
                        <tr>
                            <td>{{ $deudor->id_deudor }}</td>
                            <td>
                                {{-- <a href="{{route('ficha.ejecutado',$deudor->id_deudor)}}" class="btn btn-light btn-sm"><i class="fas fa-eye"></i></a> --}}
                                {{-- <a href="{{route('edit.ejecutado',$deudor->id_deudor)}}" class="btn btn-light btn-sm">
                                    <i class="fas fa-edit"></i>
                                </a>
                                @if(auth()->user()->role == 0)
                                    <a onclick="eliminarDeudor({{$deudor->id_deudor}})" class="btn btn-light btn-sm"><i class="fas fa-trash"></i></a>
                                @endif --}}
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


<div class="modal fade" id="modalEliminarDeudor" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
        function eliminarDeudor(id) { 
            $("#id_deudor").val(id);
            $("#modalEliminarDeudor").modal('show');
        }
        
    </script>



<script src="../../../assets/js/plugins/jquery.dataTables.min.js"></script>
<script src="../../../assets/js/plugins/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function() {
        $('#deudoresTable').DataTable({
            columnDefs: [
                { width: '200px', targets: 1 }
            ],
            fixedColumns: true
        });
    });
</script>
@endsection