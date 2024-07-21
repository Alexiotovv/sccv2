@extends('bases.base')
@section('css')
    <style>
        #printableArea {
            border: 1px solid #000;
            padding: 20px;
            margin: 20px;
        }
        .cabecera img {
            max-width: 100%;
            height: auto;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
    </style>
@endsection
@section('content')
    <div class="card">
        <div class="card-body">
            <br>
            <a href="{{route('index.ejecutado')}}" class="btn btn-light btn-sm"><i class="fas fa-arrow-circle-left"></i> Regresar</a>
            <br>
            <div id="printableArea">
                <div class="cabecera" style="text-align: center">
                    <img src="../../../assets/images/application/cabecera_gorel.png" alt="Cabecera de la Carta">
                </div>
                <h4 style="text-align: center">Ficha de Registro</h4>
                <h5>Datos del Ejecutado</h5>
                <div class="row">
                    <div class="col-md-4">
                        <p>Tipor Persona</p> 
                    </div>
                    <div class="col-md-4">
                        <p>Sr./Razón: 
                            @if ($deudor->ruc)
                                {{$deudor->razon}}
                            @else
                                {{$deudor->nombre}} {{$deudor->apellidos}}
                            @endif
                        </p>
                    </div>
                    <div class="col-md-4">
                        <p>DNI/RUC: 
                            @if ($deudor->ruc)
                                {{$deudor->ruc}}
                            @else
                                {{$deudor->dni}}
                            @endif
                        </p>
                    </div>
                    <div class="col-md-4">
                        
                        <p>Representante Legal: 
                            @if ($deudor->ruc)
                                {{$deudor->nombre_rep}}{{$deudor->apellidos_rep}}
                            @else
                                {{$deudor->nombre}} {{$deudor->apellidos}}
                            @endif
                        </p>
                    </div>

                    <div class="col-md-6">
                        <p>Domicilio Fiscal: {{$deudor->domicilio}}</p>
                    </div>
                </div>
                
                <hr>
                @foreach ($expediente as $expediente)
                    <h5>Expediente</h5>
                    <p>N°: {{$expediente->expediente}}</p>
                    <p>Concepto: {{$expediente->concepto}}</p>
                    <p>Monto: {{$expediente->monto}}</p>
                    <p>Fecha: {{$expediente->fecha}}</p>
                    <p>UIT: {{$expediente->uit}}</p>
                    <p>Res. Administrativa: {{$expediente->resolucion_admin}}</p>
                    <p>Fecha Res. Administrativa: {{$expediente->fecha_resolucion_admin}}</p>
                    <p>Aperturado:
                        @if ($expediente->noaperturado)
                            Si
                        @else
                            No
                        @endif
                    </p>
                    <br>
                    <h5>Verificación Registral</h5>
                    <div class="table-responsive">
                        <table id="vregistralTable" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    
                                    <th>Prescrito</th>
                                    <th>Estado</th>
                                    <th>Observaciones</th>
                                    <th>Fecha Registro</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($vregistral as $vr)
                                    @if ($expediente->id==$vr->id_expedientes)
                                        <tr>
                                            <td>{{ $vr->prescrito }}</td>
                                            <td>{{ $vr->estado }}</td>
                                            <td>{{ $vr->observaciones }}</td>
                                            <td>{{ $vr->created_at }}</td>
                                            
                                        </tr>
                                    @endif
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                        
                        
                        

                    @foreach ($cronogramas as $cro)
                        @if ($expediente->id==$cro->id_expedientes)
                            <h5>Cronograma</h5>
                                {{-- <div class="table-responsive"> --}}
                                        <table id="cronogramaTable" class="table table-striped table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>N° Cuotas</th>
                                                    <th>F. Inicial Pago</th>
                                                    <th>Monto Cuota</th>
                                                    <th>% Aplicado</th>
                                                    <th>Estado</th>
                                                    <th>F.Registro</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>{{ $cro->numero_cuotas }}</td>
                                                    <td>{{ $cro->fecha_inicial_pago }}</td>
                                                    <td>{{ $cro->monto_pagar }}</td>
                                                    <td>{{ $cro->interes_aplicado }}</td>
                                                    <td>
                                                        @if ($cro->estado)
                                                            <p style="colo:green;"></p>CANCELADO
                                                        @else
                                                            <p style="color: red">PENDIENTE</p>
                                                        @endif
                                                        
                                                    </td>
                                                    <td>{{ $cro->created_at }}</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    {{-- </div> --}}
                                    <h5>Pagos Realizados</h5>
                                    @foreach ($pagos as $p)
                                        @if ($p->id_cronograma==$cro->id)
                                            {{-- <div class="table-responsive"> --}}
                                                <table id="pagosTable" class="table table-striped table-bordered">
                                                    <thead>
                                                        <tr>
                                                            <th>Id</th>
                                                            <th>Monto</th>
                                                            <th>Método</th>
                                                            <th>Estado</th>
                                                            <th>Fecha</th>
                                                            <th>Hora</th>
                                                            <th>Archivo</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>{{ $p->id }}</td>
                                                            <td>{{ $p->monto }}</td>
                                                            <td>{{ $p->metodo }}</td>
                                                            <td>
                                                                @if ($p->estado==1)
                                                                    <p>PENDIENTE({{$p->estado}})</p>
                                                                @elseif($p->estado==2)
                                                                    <p>COMPLETO({{$p->estado}})</p>
                                                                @elseif($p->estado==3)
                                                                    <p>PARCIALMENTE PAGADO({{$p->estado}})</p>
                                                                @endif
                                                            </td>
                                                            <td>{{ $p->fecha }}</td>
                                                            <td>{{ $p->hora }}</td>
                                                            <td>{{ $p->archivo }}ssssssssssssssssssssssssssss</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            {{-- </div> --}}
                                        @endif
                                    @endforeach
                                    <hr>
                            @endif
                            

                    @endforeach
                    
                @endforeach

                
                <hr>
                {{-- <img src="{{asset('storage/firmas/'.$firma)}}" alt=""> --}}
            </div>
            
            
            <div class="button-container">
                <button onclick="printDiv('printableArea')" class="btn btn-dark btn-sm"><i class="fas fa-print"></i> Imprimir Ficha</button>
            </div>
        </div>
    </div>
@endsection
@section('js')
<script>
function printDiv(divId) {
    var divToPrint = $('#' + divId).html();
    var styles = `
        <link rel="stylesheet" href="../../../assets/css/style.css" id="main-style-link" >
        <link rel="stylesheet" href="../../../assets/css/style-preset.css" >
        <link rel="stylesheet" href="../../../assets/fonts/material.css" >
        
        <style>
            @media print {
                @page { size: A4; margin: 20mm; }
                body { margin: 0; }
            }
        </style>
    `;
    var newWin = window.open('', 'Print-Window');
    newWin.document.open();
    newWin.document.write(`
        <html>
        <head>
            <title>Print</title>
            ${styles}
        </head>
        <body onload="window.print()">
            ${divToPrint}
        </body>
        </html>
    `);
    newWin.document.close();
    setTimeout(function() {
        newWin.close();
    }, 10);
}

</script>
@endsection