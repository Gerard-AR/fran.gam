document.addEventListener('DOMContentLoaded', () => {
    const adminId = document.getElementById('main-content')?.dataset.adminId;

    if (!adminId) {
        console.error("Admin ID no está definido en el DOM.");
        return;
    }

    // Función para cargar órdenes dinámicamente
    const loadOrders = () => {
        fetch(`getOrdenes.php?admin_id=${adminId}`)
            .then(response => response.json())
            .then(data => {
                const tbody = document.querySelector('#tablaOrdenes tbody');
                tbody.innerHTML = ''; // Limpiar tabla

                data.forEach(order => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td>${order.cliente_nombre || ''}</td>
                        <td>${order.equipo || ''}</td>
                        <td>${order.tipo_uso || ''}</td>
                        <td>${order.objetivo || ''}</td>
                        <td>${order.tipo_trabajo || ''}</td>
                        <td>${order.fecha_inicio || ''}</td>
                        <td>${order.fecha_culminacion || ''}</td>
                        <td>${order.serial_motor || ''}</td>
                        <td>${order.serial_carroceria || ''}</td>
                        <td>${order.descripcion_general || ''}</td>
                        <td>${order.observacion_general || ''}</td>
                        <td>
                            <button class="view-btn" data-id="${order.id}">👁</button>
                            <button class="edit-btn" data-id="${order.id}">✏</button>
                            <button class="delete-btn" data-id="${order.id}">🗑</button>
                        </td>
                    `;
                    tbody.appendChild(row);
                });

                attachActionListeners();
            })
            .catch(error => console.error('Error al cargar órdenes:', error));
    };

    // Función para manejar clic en la papelera (borrar)
    const deleteOrder = (id) => {
        if (!confirm('¿Estás seguro de eliminar esta orden?')) return;

        fetch(`deleteOrden.php?id=${id}`, { method: 'DELETE' })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('Orden eliminada correctamente.');
                    loadOrders(); // Recargar órdenes
                } else {
                    alert(`Error al eliminar la orden: ${data.message}`);
                }
            })
            .catch(error => console.error('Error al eliminar la orden:', error));
    };

    // Función para abrir el popup con detalles de la orden
    const viewOrder = (id) => {
        fetch(`getOrdenDetails.php?id=${id}`)
            .then(response => response.json())
            .then(order => {
                if (order.success) {
                    populateOrderDetailsPopup(order.data);
                    document.getElementById('orderDetailsPopup').style.display = 'flex';
                } else {
                    alert(`Error al obtener detalles: ${order.message}`);
                }
            })
            .catch(error => console.error('Error al obtener detalles de la orden:', error));
    };

    // Función para prellenar el formulario de detalles en el popup
    const populateOrderDetailsPopup = (order) => {
        const form = document.getElementById('orderDetailsForm');
        Object.keys(order).forEach(key => {
            if (form[key]) {
                form[key].value = order[key];
            }
        });
    };

    // Guardar cambios en la orden desde el popup
    const saveOrderChanges = (event) => {
        event.preventDefault();
        const form = document.getElementById('orderDetailsForm');
        const formData = new FormData(form);

        fetch('updateOrden.php', {
            method: 'POST',
            body: formData,
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('Orden actualizada correctamente.');
                    document.getElementById('orderDetailsPopup').style.display = 'none';
                    loadOrders(); // Recargar órdenes
                } else {
                    alert(`Error al actualizar la orden: ${data.message}`);
                }
            })
            .catch(error => console.error('Error al actualizar la orden:', error));
    };

    // Agregar listeners a los botones de acción
    const attachActionListeners = () => {
        document.querySelectorAll('.view-btn').forEach(btn => {
            btn.addEventListener('click', () => viewOrder(btn.dataset.id));
        });

        document.querySelectorAll('.edit-btn').forEach(btn => {
            btn.addEventListener('click', () => viewOrder(btn.dataset.id)); // Usar el mismo popup para editar
        });

        document.querySelectorAll('.delete-btn').forEach(btn => {
            btn.addEventListener('click', () => deleteOrder(btn.dataset.id));
        });
    };

    // Cargar órdenes al inicio
    loadOrders();

    // Cerrar el popup al hacer clic fuera de él
    document.getElementById('orderDetailsPopup').addEventListener('click', (event) => {
        if (event.target === document.getElementById('orderDetailsPopup')) {
            document.getElementById('orderDetailsPopup').style.display = 'none';
        }
    });

    // Manejar el guardado de cambios en el popup
    document.getElementById('orderDetailsForm').addEventListener('submit', saveOrderChanges);
});

