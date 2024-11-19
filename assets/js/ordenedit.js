// Función para eliminar una orden
function eliminarOrden(id) {
    // Configurar la solicitud AJAX para eliminar orden
    fetch('eliminarOrden.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ id: id }),
    })
    .then(response => response.json())
    .then(data => {
        // Verificar la respuesta del servidor
        if (data.success) {
            alert(data.message); // Mostrar mensaje de éxito
            // Aquí puedes actualizar la interfaz si es necesario
        } else {
            alert(data.message); // Mostrar mensaje de error
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Hubo un problema al eliminar la orden'); // Mostrar mensaje de error genérico
    });
}

// Función para mostrar los detalles de una orden en un popup
function mostrarPopupDetallesOrden(id) {
    fetch(`detallesOrden.php?id=${id}`)
        .then(response => response.json())
        .then(data => {
            const ordenDetailsHtml = `
                <div>
                    <h2>Detalles de la Orden</h2>
                    <p><strong>ID:</strong> ${data.id}</p>
                    <p><strong>Cliente ID:</strong> ${data.cliente_id}</p>
                    <p><strong>Equipo:</strong> ${data.equipo}</p>
                    <p><strong>Marca:</strong> ${data.marca}</p>
                    <p><strong>Modelo:</strong> ${data.modelo}</p>
                    <p><strong>Serie:</strong> ${data.serie}</p>
                    <p><strong>Número de Bien:</strong> ${data.nro_bien}</p>
                    <p><strong>Año:</strong> ${data.ano}</p>
                    <p><strong>Serial Motor:</strong> ${data.serial_motor}</p>
                    <p><strong>Serial Carrocería:</strong> ${data.serial_carroceria}</p>
                    <p><strong>Color:</strong> ${data.color}</p>
                    <p><strong>Tipo de Uso:</strong> ${data.tipo_uso}</p>
                    <p><strong>Ubicación:</strong> ${data.ubicacion}</p>
                    <p><strong>Objetivo:</strong> ${data.objetivo}</p>
                    <p><strong>Tipo de Trabajo:</strong> ${data.tipo_trabajo}</p>
                    <p><strong>Fecha de Inicio:</strong> ${data.fecha_inicio}</p>
                    <p><strong>Fecha de Culminación:</strong> ${data.fecha_culminacion}</p>
                    <p><strong>Duración:</strong> ${data.duracion} ${data.periodo}</p>
                    <p><strong>Solicita:</strong> ${data.solicita}</p>
                    <p><strong>Autoriza:</strong> ${data.autoriza}</p>
                    <p><strong>Ejecuta:</strong> ${data.ejecuta}</p>
                    <p><strong>Supervisa:</strong> ${data.supervisa}</p>
                    <p><strong>Descripción de Tarea:</strong> ${data.descripcion_tarea}</p>
                    <p><strong>Tiempo Estimado:</strong> ${data.tiempo_estimado}</p>
                    <p><strong>Tiempo Real:</strong> ${data.tiempo_real}</p>
                    <p><strong>Código de Repuesto:</strong> ${data.codigo_repuesto}</p>
                    <p><strong>Descripción de Repuesto:</strong> ${data.descripcion_repuesto}</p>
                    <p><strong>Cantidad Planificada de Repuesto:</strong> ${data.cantidad_planificada}</p>
                    <p><strong>Cantidad Utilizada de Repuesto:</strong> ${data.cantidad_utilizada}</p>
                    <p><strong>Categoría:</strong> ${data.categoria}</p>
                    <p><strong>Nombre del Personal:</strong> ${data.nombre_personal}</p>
                    <p><strong>Horas Requeridas:</strong> ${data.horas_requeridas}</p>
                    <p><strong>Horas Normales:</strong> ${data.horas_normales}</p>
                    <p><strong>Horas Extras:</strong> ${data.horas_extras}</p>
                    <p><strong>Código EPP:</strong> ${data.codigo_epp}</p>
                    <p><strong>Descripción EPP:</strong> ${data.descripcion_epp}</p>
                    <p><strong>Cantidad Planificada de EPP:</strong> ${data.cantidad_planificada_epp}</p>
                    <p><strong>Cantidad Utilizada de EPP:</strong> ${data.cantidad_utilizada_epp}</p>
                    <p><strong>Observación:</strong> ${data.observacion}</p>
                    <p><strong>Observación General:</strong> ${data.observacion_general}</p>
                    <button onclick="cerrarPopupDetallesOrden()">Cerrar</button>
                </div>
            `;

            // Mostrar el popup con los detalles de la orden
            mostrarPopup(ordenDetailsHtml);
        })
        .catch(error => {
            console.error('Error al obtener los detalles de la orden:', error);
            alert('Error al obtener los detalles de la orden. Inténtelo de nuevo más tarde.');
        });
}

// Función para cerrar el popup de detalles de la orden
function cerrarPopupDetallesOrden() {
    cerrarPopup();
}

// Función para mostrar un popup genérico con contenido HTML
function mostrarPopup(htmlContent) {
    const popupContainer = document.createElement('div');
    popupContainer.classList.add('popup-container');
    popupContainer.innerHTML = `
        <div class="popup">
            <span class="cerrar-popup" onclick="cerrarPopup()">×</span>
            ${htmlContent}
        </div>
    `;
    document.body.appendChild(popupContainer);
}

// Función para cerrar cualquier popup
function cerrarPopup() {
    const popupContainer = document.querySelector('.popup-container');
    if (popupContainer) {
        document.body.removeChild(popupContainer);
    }
}

// Aquí puedes agregar cualquier otra lógica necesaria para tu archivo ordenedit.js
