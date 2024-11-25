document.addEventListener('DOMContentLoaded', () => {
    // Obtener el admin_id del localStorage
    const adminId = localStorage.getItem('admin_id');
    if (!adminId) {
        alert('No estás autenticado. Redirigiendo a la página de inicio de sesión.');
        window.location.href = 'index.html'; // Redirigir si no hay admin_id
        return;
    }

    // Función para obtener el nombre de la página actual
    const getCurrentPage = () => {
        const path = window.location.pathname;
        return path.substring(path.lastIndexOf('/') + 1); // Obtener el nombre del archivo (ej. index.html)
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

    // Función para actualizar los valores de las tarjetas
    const actualizarTarjetas = (data) => {
        document.getElementById('alertas-count').textContent = data.alertas;
        document.getElementById('clientes-count').textContent = data.clientes;
        document.getElementById('ordenes-count').textContent = data.ordenes;
        document.getElementById('maquinas-count').textContent = data.maquinas;
    };

    // Función para obtener datos del dashboard
    const obtenerDatosDashboard = async () => {
        try {
            const response = await fetch(`/getDashboardData.php?admin_id=${adminId}`);
            if (!response.ok) {
                throw new Error('Error al obtener datos del dashboard');
            }
            const result = await response.json();
            if (result.success) {
                actualizarTarjetas(result.data);
            } else {
                console.error('Error en la respuesta del servidor:', result.message);
            }
        } catch (error) {
            console.error('Error al obtener datos del dashboard:', error);
        }
    };
// Función para obtener órdenes desde la base de datos
    const fetchOrdenes = () => {
        fetch('getOrdenes.php')
            .then(response => response.json())
            .then(data => {
                const tbody = document.querySelector('#tablaOrdenes tbody');
                tbody.innerHTML = ''; // Limpiar contenido previo
                data.forEach(orden => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td>${orden.cliente_id}</td>
                        <td>${orden.equipo}</td>
                        <td>${orden.objetivo}</td>
                        <td>${orden.tipo_trabajo}</td>
                        <td>${orden.observacion_general}</td>
                        `;
                    tbody.appendChild(row);
                });
            })
            .catch(error => console.error('Error fetching orders:', error));
    }

     // Función para mostrar los clientes en la tabla
const mostrarClientes = (clientes) => {
    const tablaClientes = document.querySelector('#tablaClientesindex tbody');
    tablaClientes.innerHTML = ''; // Limpiar la tabla antes de mostrar los nuevos datos

    clientes.forEach(cliente => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td width="60px">
                <div class="imgBx">
                    <img src="assets/imgs/logo1.png" alt="Logo">
                </div>
            </td>
            <td>
                <h4>${cliente.nombre} <br> <span>${cliente.empresa}</span></h4>
            </td>
        `;
        tablaClientesindex.appendChild(row);
    });
};

// Función para obtener clientes desde el backend
const obtenerClientes = async () => {
    try {
        const adminId = localStorage.getItem('admin_id'); // Obtener admin_id desde localStorage
        if (!adminId) {
            alert('No estás autenticado. Redirigiendo a la página de inicio de sesión.');
            window.location.href = 'index.html';
            return;
        }

        const response = await fetch(`/getClientes.php?admin_id=${adminId}`);
        if (!response.ok) {
            throw new Error('Error al obtener los clientes');
        }

        const clientes = await response.json();
        mostrarClientes(clientes);
    } catch (error) {
        console.error('Error al obtener clientes:', error);
    }
};

    // Llamar a la función al cargar la página
    obtenerClientes();
    obtenerDatosDashboard();
});
