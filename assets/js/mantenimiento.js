document.addEventListener('DOMContentLoaded', () => {
    // Función para obtener el nombre de la página actual
    const getCurrentPage = () => {
        const path = window.location.pathname;
        return path.substring(path.lastIndexOf('/') + 1); // Obtener el nombre del archivo (ej. Ordenes.html)
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

    // Función para obtener órdenes desde la base de datos
    const fetchOrdenesMantenimiento = () => {
        fetch('getmantenimiento.php')
            .then(response => response.json())
            .then(data => {
                console.log(data);  // Verificar los datos obtenidos del servidor
                const tbody = document.querySelector('#tablaOrdenesMantenimiento tbody');
                tbody.innerHTML = ''; // Limpiar contenido previo

                // Verificar si se obtuvo un array de órdenes
                if (Array.isArray(data)) {
                    data.forEach(orden => {
                        const row = document.createElement('tr');
                        row.innerHTML = `
                            <td>${orden.cliente_id}</td>
                            <td>${orden.equipo}</td>
                            <td>${orden.tipo_uso}</td>
                            <td>${orden.objetivo}</td>
                            <td>${orden.tipo_trabajo}</td>
                            <td>${orden.fecha_inicio}</td>
                            <td>${orden.fecha_culminacion}</td>
                            <td>${orden.serial_motor}</td>
                            <td>${orden.serial_carroseria}</td>
                            <td>${orden.descripcion_tarea}</td>
                            <td>${orden.observacion_general}</td>
                            <td>
                               <button onclick="eliminarOrden(${orden.id})" title="Eliminar">
            <i class="fas fa-trash"></i> <!-- Icono de papelera -->
        </button>
        <button onclick="verDetallesOrden(${orden.id})" title="Detalles">
            <i class="fas fa-search"></i> <!-- Icono de lupa -->
        </button>
    </td>
`;
                        tbody.appendChild(row);
                    });
                } else {
                    console.error('Error: No se obtuvo un array de órdenes', data);
                }
            })
            .catch(error => console.error('Error fetching orders:', error));
    };

    // Llamar a la función al cargar la página
    fetchOrdenesMantenimiento();

    // Agregar evento de búsqueda
    document.getElementById('searchInputorden').addEventListener('input', filtrarordenes);

    // Función para filtrar las órdenes según el texto de búsqueda
    const filtrarordenes = () => {
        const searchInput = document.getElementById('searchInputorden').value.toLowerCase();
        const rows = document.querySelectorAll('#tablaOrdenesMantenimiento tbody tr');
        rows.forEach(row => {
            const cells = Array.from(row.children);
            const match = cells.some(cell => cell.textContent.toLowerCase().includes(searchInput));
            row.style.display = match ? '' : 'none';
        });
    };
});