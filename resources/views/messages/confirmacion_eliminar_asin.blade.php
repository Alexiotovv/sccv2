<div class="modal fade" id="modalConfirmarEliminar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Confirmación para Eliminar </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            
            <div class="modal-body">
                <input type="text" id="id_registro_eliminar" hidden>
                <p>Confirme por favor para poder eliminar</p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Salir</button>
                <button type="button" class="btn btn-danger btn-sm" onclick="btnEliminarCredito()">Sí Eliminar</a>
            </div>

        </div>
    </div>
</div>