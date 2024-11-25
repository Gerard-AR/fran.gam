document.addEventListener('DOMContentLoaded', () => {
    const clienteSelect = document.getElementById('clienteSelect');
    const exportarBtn = document.getElementById('exportarBtn');
    const adminId = 1; // Cambia este valor según sea necesario o dinámicamente.

    // Función para obtener el nombre de la página actual
    const getCurrentPage = () => {
        const path = window.location.pathname;
        return path.substring(path.lastIndexOf('/') + 1);
    };

    // Función para activar el efecto hover en el menú según la página actual
    const activarMenuHover = () => {
        const currentPage = getCurrentPage();
        const menuItems = document.querySelectorAll('.navigation ul li a');

        menuItems.forEach(item => {
            item.parentElement.classList.remove('hovered');
        });

        menuItems.forEach(item => {
            const pageName = item.getAttribute('href').split('/').pop();
            if (pageName === currentPage) {
                item.parentElement.classList.add('hovered');
            }
        });
    };

    // Llamar a activarMenuHover al cargar la página
    activarMenuHover();

    // Función para alternar el menú de navegación
    const toggle = document.querySelector(".toggle");
    const navigation = document.querySelector(".navigation");
    const main = document.querySelector(".main");

    toggle.onclick = () => {
        navigation.classList.toggle("active");
        main.classList.toggle("active");
    };

    // Función para cargar los clientes dinámicamente en el select
    const fetchClientes = () => {
        fetch(`getClientes.php?admin_id=${adminId}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error(`Error HTTP: ${response.status}`);
                }
                return response.json();
            })
            .then(clientes => {
                if (clientes.error) {
                    throw new Error(clientes.error);
                }

                // Limpiar el select antes de llenarlo
                clienteSelect.innerHTML = '<option value="">Seleccionar Cliente</option>';

                // Llenar el select con las opciones de clientes
                clientes.forEach(cliente => {
                    const option = document.createElement('option');
                    option.value = cliente.id;
                    option.textContent = cliente.nombre;
                    clienteSelect.appendChild(option);
                });
            })
            .catch(error => console.error('Error fetching clients:', error.message));
    };

    // Función para obtener reportes de un cliente específico
    const fetchReportesPorCliente = (clienteId) => {
        fetch(`getReportes.php?admin_id=${adminId}&cliente_id=${clienteId}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(data => {
                if (data.error) {
                    throw new Error(data.error);
                }

                const tbody = document.querySelector('#tablaReports tbody');
                tbody.innerHTML = ''; // Limpiar la tabla previa

                if (data.length === 0) {
                    alert("No se encontraron reportes para este cliente.");
                    return;
                }

                // Llenar la tabla con los datos recibidos
                data.forEach(reporte => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td>${reporte.equipo}</td>
                        <td>${reporte.tipo}</td>
                        <td>${reporte.fecha}</td>
                        <td>${reporte.estado}</td>
                    `;
                    tbody.appendChild(row);
                });
            })
            .catch(error => console.error('Error fetching reports:', error.message));
    };

    // Evento para detectar cambios en el select
    clienteSelect.addEventListener('change', (e) => {
        const clienteId = e.target.value;
        if (clienteId) {
            fetchReportesPorCliente(clienteId);
        } else {
            alert("Por favor selecciona un cliente para ver los reportes.");
        }
    });

    // Función para exportar reportes a Excel
    exportarBtn.addEventListener('click', () => {
        const clienteId = clienteSelect.value;
        if (clienteId) {
            window.location.href = `getReportes.php?export=excel&admin_id=${adminId}&cliente_id=${clienteId}`;
        } else {
            alert("Por favor selecciona un cliente para exportar las órdenes.");
        }
    });

    // Llenar el select de clientes al cargar la página
    fetchClientes();
});
