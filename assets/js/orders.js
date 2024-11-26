document.addEventListener('DOMContentLoaded', () => {
    const mainContent = document.getElementById('main-content');
    if (!mainContent) {
        console.error("El elemento 'main-content' no se encontró en el DOM.");
        return;
    }

    const adminId = mainContent.dataset.adminId;
    if (!adminId) {
        console.error("El atributo 'data-admin-id' no está definido.");
        return;
    }

    console.log(`Admin ID encontrado: ${adminId}`);
    let formData = new FormData();

    // Cargar clientes
    const loadClientes = () => {
        fetch(`getClientes.php?admin_id=${adminId}`)
            .then(response => response.json())
            .then(data => {
                const clienteSelect = document.getElementById('cliente');
                clienteSelect.innerHTML = '<option value="">Seleccionar Cliente</option>';
                data.forEach(cliente => {
                    const option = document.createElement('option');
                    option.value = cliente.id;
                    option.textContent = `${cliente.nombre} ${cliente.apellido} - ${cliente.empresa || 'Sin empresa'}`;
                    clienteSelect.appendChild(option);
                });
            })
            .catch(error => console.error("Error al cargar clientes:", error));
    };

    // Cargar máquinas asociadas a cliente
    const loadMachines = (clienteId) => {
        const maquinaSelect = document.getElementById('maquina');
        maquinaSelect.innerHTML = '<option value="">Seleccionar Máquina</option>';
        if (!clienteId) return;

        fetch(`getEquipos.php?cliente_id=${clienteId}`)
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    data.machines.forEach(machine => {
                        const option = document.createElement('option');
                        option.value = machine.id;
                        option.textContent = `${machine.equipo} - ${machine.referencia} (${machine.modelo})`;
                        maquinaSelect.appendChild(option);
                    });
                }
            })
            .catch(error => console.error("Error al cargar máquinas:", error));
    };

    // Manejar cambio de cliente
    const clienteSelect = document.getElementById('cliente');
    clienteSelect?.addEventListener('change', () => loadMachines(clienteSelect.value));

    // Mostrar popup inicial
    document.querySelector('.create-Orden-btn')?.addEventListener('click', () => {
        document.getElementById('createOrdenPopupA').style.display = 'flex';
    });

    // Función para cerrar popups
    const closeAllPopups = () => {
        document.querySelectorAll('.popup').forEach(popup => popup.style.display = 'none');
    };

    // Función para cargar órdenes
    const fetchWorkOrders = () => {
        fetch('getOrdenes.php')
            .then(response => response.json())
            .then(data => {
                const tbody = document.querySelector('#tablaOrdenes tbody');
                tbody.innerHTML = '';

                if (data.length === 0) {
                    tbody.innerHTML = '<tr><td colspan="12">No hay órdenes disponibles</td></tr>';
                    return;
                }

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

                setupActionButtons();
            })
            .catch(error => console.error('Error al cargar órdenes:', error));
    };

    // Funciones para manejar acciones de botones
    const setupActionButtons = () => {
        document.querySelectorAll('.view-btn').forEach(btn =>
            btn.addEventListener('click', () => viewWorkOrder(btn.dataset.id))
        );

        document.querySelectorAll('.edit-btn').forEach(btn =>
            btn.addEventListener('click', () => editWorkOrder(btn.dataset.id))
        );

        document.querySelectorAll('.delete-btn').forEach(btn =>
            btn.addEventListener('click', () => deleteWorkOrder(btn.dataset.id))
        );
    };

    const viewWorkOrder = (id) => {
        fetch(`getWorkOrderDetails.php?id=${id}`)
            .then(response => response.json())
            .then(data => {
                // Implementar lógica para mostrar datos en un popup
                console.log("Detalles de la orden:", data);
            })
            .catch(error => console.error('Error al ver detalles:', error));
    };

    const editWorkOrder = (id) => {
        fetch(`getWorkOrderDetails.php?id=${id}`)
            .then(response => response.json())
            .then(data => {
                console.log("Datos para editar:", data);
                // Precargar datos en el formulario y mostrar popup
            })
            .catch(error => console.error('Error al editar orden:', error));
    };

    const deleteWorkOrder = (id) => {
        if (!confirm("¿Estás seguro de eliminar esta orden?")) return;

        fetch(`deleteWorkOrder.php?id=${id}`, { method: 'DELETE' })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('Orden eliminada');
                    fetchWorkOrders();
                } else {
                    alert('Error al eliminar la orden');
                }
            })
            .catch(error => console.error('Error al eliminar orden:', error));
    };

    // Cargar datos iniciales
    loadClientes();
    fetchWorkOrders();
});

