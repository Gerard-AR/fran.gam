document.addEventListener('DOMContentLoaded', () => {
    // Obtener el admin ID desde el elemento principal
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

    // Función para cargar clientes dinámicamente
    const loadClientes = () => {
        fetch(`getClientes.php?admin_id=${adminId}`)
            .then(response => response.json())
            .then(data => {
                const clienteSelect = document.getElementById('cliente');
                if (clienteSelect) {
                    clienteSelect.innerHTML = '<option value="">Seleccionar Cliente</option>';
                    data.forEach(cliente => {
                        const option = document.createElement('option');
                        option.value = cliente.id;
                        option.textContent = `${cliente.nombre} ${cliente.apellido} - ${cliente.empresa || 'Sin empresa'}`;
                        clienteSelect.appendChild(option);
                    });
                }
            })
            .catch(error => {
                console.error("Error al cargar clientes:", error);
            });
    };

    // Función para cargar máquinas asociadas al cliente seleccionado
    const loadMachines = (clienteId) => {
        const maquinaSelect = document.getElementById('maquina');
        if (!maquinaSelect) {
            console.error("El elemento 'maquina' no existe en el DOM.");
            return;
        }

        if (!clienteId) {
            maquinaSelect.innerHTML = '<option value="">Seleccionar Máquina</option>';
            return;
        }

        fetch(`getEquipos.php?cliente_id=${clienteId}`)
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    maquinaSelect.innerHTML = '<option value="">Seleccionar Máquina</option>';
                    data.machines.forEach(machine => {
                        const option = document.createElement('option');
                        option.value = machine.id;
                        option.textContent = `${machine.equipo} - ${machine.referencia} (${machine.modelo})`;
                        maquinaSelect.appendChild(option);
                    });
                } else {
                    console.error("Error al cargar máquinas:", data.message);
                }
            })
            .catch(error => console.error("Error en la solicitud de máquinas:", error));
    };

    // Evento para cargar máquinas cuando el cliente cambia
    const clienteSelect = document.getElementById('cliente');
    if (clienteSelect) {
        clienteSelect.addEventListener('change', () => {
            const clienteId = clienteSelect.value;
            loadMachines(clienteId);
        });
    }

    // Función para cerrar todos los popups
    const closeAllPopups = () => {
        document.querySelectorAll('.popup').forEach(popup => {
            popup.style.display = 'none';
        });
    };

    // Función para mostrar el siguiente popup
    window.showNextPopup = (currentPopupId, nextPopupId) => {
        const currentPopup = document.getElementById(currentPopupId);
        const form = currentPopup.querySelector('form');
        if (form) {
            const formPartData = new FormData(form);
            formPartData.forEach((value, key) => {
                formData.set(key, value);
            });
        }

        currentPopup.style.display = 'none';
        if (nextPopupId) {
            const nextPopup = document.getElementById(nextPopupId);
            nextPopup.style.display = 'flex';
        }
    };

    // Función para abrir el popup inicial
    const createOrdenBtn = document.querySelector('.create-Orden-btn');
    if (createOrdenBtn) {
        createOrdenBtn.addEventListener('click', () => {
            const popupA = document.getElementById('createOrdenPopupA');
            if (popupA) {
                popupA.style.display = 'flex';
            } else {
                console.error("El popup 'createOrdenPopupA' no se encontró.");
            }
        });
    } else {
        console.error("El botón 'create-Orden-btn' no se encontró.");
    }

    // Función para enviar los datos del formulario completo
    window.submitFormData = () => {
        const clienteId = document.getElementById('cliente').value;
        const maquinaId = document.getElementById('maquina').value;

        if (!clienteId || !maquinaId) {
            alert('Por favor selecciona un cliente y una máquina antes de enviar.');
            return;
        }

        formData.set('cliente_id', clienteId);
        formData.set('maquina_id', maquinaId);
        formData.set('admin_id', adminId);

        fetch('createOrden.php', {
            method: 'POST',
            body: formData
        })
            .then(response => response.text())
            .then(data => {
                console.log("Respuesta del servidor:", data);
                try {
                    const jsonData = JSON.parse(data);
                    if (jsonData.success) {
                        alert(jsonData.message);
                        fetchOrdenes();
                        closeAllPopups();
                        formData = new FormData(); // Resetear formData
                    } else {
                        alert('Error: ' + jsonData.message);
                    }
                } catch (error) {
                    console.error("Error al procesar JSON:", error, "Respuesta:", data);
                }
            })
            .catch(error => {
                console.error('Error en la solicitud:', error);
            });
    };

    // Función para cargar órdenes existentes
     fetch('getOrdenes.php')
    .then(response => response.json())
    .then(data => {
        console.log("Datos recibidos del servidor:", data); // Verifica qué datos llegan
        const tbody = document.querySelector('#tablaOrdenes tbody');
        tbody.innerHTML = ''; // Limpiar tabla

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
    })
    .catch(error => console.error('Error fetching orders:', error));
       
    };

    // Cargar datos iniciales
    loadClientes();
    fetchOrdenes();
});

