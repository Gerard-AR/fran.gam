document.addEventListener('DOMContentLoaded', () => {
    // Función para obtener el nombre de la página actual
    const getCurrentPage = () => {
        const path = window.location.pathname;
        return path.substring(path.lastIndexOf('/') + 1); // Obtener el nombre del archivo (ej. Machine.html)
    };

    // Función para activar el efecto hover en el menú según la página actual
    const activarMenuHover = () => {
        const currentPage = getCurrentPage();
        const menuItems = document.querySelectorAll('.navigation ul li a');

        // Remover todas las clases 'hovered' de los elementos del menú
        menuItems.forEach(item => {
            item.parentElement.classList.remove('hovered');
        });

        // Agregar la clase 'hovered' al elemento del menú correspondiente a la página actual
        menuItems.forEach(item => {
            const pageName = item.getAttribute('href').split('/').pop();
            if (pageName === currentPage) {
                item.parentElement.classList.add('hovered');
            }
        });
    };

    // Llamar a activarMenuHover al cargar la página para establecer el estado inicial
    activarMenuHover();

    // Obtener elementos del DOM
    const toggle = document.querySelector(".toggle");
    const navigation = document.querySelector(".navigation");
    const main = document.querySelector(".main");

    toggle.onclick = function () {
        navigation.classList.toggle("active");
        main.classList.toggle("active");
    };

    // Función para obtener los reportes por cliente
    const fetchReportesPorCliente = (clienteId) => {
        fetch(`getReportes.php?cliente_id=${clienteId}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(data => {
                if (data.error) {
                    console.error(data.error);
                } else {
                    // Llenar la tabla con los datos recibidos
                    const tbody = document.querySelector('#tablaReports tbody');
                    tbody.innerHTML = ''; // Limpiar la tabla previa

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
                }
            })
            .catch(error => console.error('Error fetching reports:', error));
    };

    // Evento para seleccionar cliente
    const clienteSelect = document.getElementById('clienteSelect');
    clienteSelect.addEventListener('change', (e) => {
        const clienteId = e.target.value;
        if (clienteId) {
            fetchReportesPorCliente(clienteId);
        } else {
            console.error("No se ha seleccionado un cliente.");
        }
    });

    // Función para exportar reportes a Excel
    const exportarBtn = document.getElementById('exportarBtn');
    exportarBtn.addEventListener('click', () => {
        const clienteId = clienteSelect.value;
        if (clienteId) {
            window.location.href = `getReportes.php?export=excel&cliente_id=${clienteId}`;
        } else {
            alert("Por favor selecciona un cliente para exportar las órdenes.");
        }
    });
});
