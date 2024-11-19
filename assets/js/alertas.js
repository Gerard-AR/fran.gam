document.addEventListener('DOMContentLoaded', () => {
    // Función para obtener el nombre de la página actual
    const getCurrentPage = () => {
        const path = window.location.pathname;
        return path.substring(path.lastIndexOf('/') + 1); // Obtener el nombre del archivo (ej. alertas.html)
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

    // Manejo del menú hamburguesa (toggle)
    const toggle = document.querySelector(".toggle");
    const navigation = document.querySelector(".navigation");
    const main = document.querySelector(".main");

    toggle.addEventListener('click', () => {
        navigation.classList.toggle("active");
        main.classList.toggle("active");
    });

    const fetchMaquinas = () => {
        fetch('getAlertasMaquinas.php')
            .then(response => response.json())
            .then(data => {
                if (data.success) { // Verifica el campo 'success'
                    const tbody = document.querySelector('#tablaAlertas tbody');
                    tbody.innerHTML = ''; // Limpiar contenido previo
                    data.maquinas.forEach(maquina => {
                        const row = document.createElement('tr');
                        row.innerHTML = `
                            <td>${maquina.equipo}</td>
                            <td>${maquina.referencia}</td>
                            <td>${maquina.modelo}</td>
                            <td>${maquina.fabricante}</td>
                            <td>${maquina.serial_carroceria}</td>
                            <td>${maquina.marca}</td>
                            <td>${maquina.ubicacion}</td>
                            <td>${maquina.serie}</td>
                            <td>${maquina.serial_motor}</td>
                            <td>${maquina.color}</td>
                            <td>${maquina.tiempo_funcionamiento}</td>
                            <td>${maquina.tiempo_funcionamiento >= 170 && maquina.tiempo_funcionamiento < 250 ? 'Alerta: Proximidad a 250 horas' : ''}</td>
                        `;
                        tbody.appendChild(row);
                    });
                } else {
                    console.error('Error en la respuesta:', data.message);
                    alert(data.message); // Muestra el mensaje de error si no está autenticado
                }
            })
            .catch(error => {
                console.error('Error fetching machines:', error);
                alert('Error al cargar las máquinas. Por favor, inténtalo de nuevo más tarde.');
            });
    };
    

    // Función para filtrar las alertas según el texto de búsqueda
    const filtrarAlertas = () => {
        const searchInput = document.getElementById('searchInputalertas').value.toLowerCase();
        const rows = document.querySelectorAll('#tablaAlertas tbody tr');
        rows.forEach(row => {
            const cells = Array.from(row.children);
            const match = cells.some(cell => cell.textContent.toLowerCase().includes(searchInput));
            row.style.display = match ? '' : 'none';
        });
    };

    // Agregar evento de búsqueda
    document.getElementById('searchInputalertas').addEventListener('input', filtrarAlertas);

    // Llamar a fetchMaquinas al cargar la página para mostrar las máquinas existentes
    fetchMaquinas();
});
