document.addEventListener('DOMContentLoaded', () => {
    // Función para obtener el nombre de la página actual
    const getCurrentPage = () => {
        const path = window.location.pathname;
        return path.substring(path.lastIndexOf('/') + 1); // Obtener el nombre del archivo
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

    if (toggle && navigation && main) {
        toggle.onclick = function () {
            navigation.classList.toggle("active");
            main.classList.toggle("active");
        };
    }

    const createOrdenBtn = document.querySelector('.create-Orden-btn');
    const createOrdenPopups = [
        'createOrdenPopupA',
        'createOrdenPopupB',
        'createOrdenPopupC',
        'createOrdenPopupD',
        'createOrdenPopupE',
        'createOrdenPopupF',
        'createOrdenPopupG',
        'createOrdenPopupH'
    ];

    let formData = new FormData();

    // Mostrar popup A al hacer clic en el botón de crear orden
    if (createOrdenBtn) {
        createOrdenBtn.addEventListener('click', () => {
            document.getElementById('createOrdenPopupA').style.display = 'flex';
        });
    } else {
        console.error("El botón para crear órdenes no existe en el DOM.");
    }

    // Cerrar popups al hacer clic fuera de ellos
    window.addEventListener('click', (event) => {
        createOrdenPopups.forEach(popupId => {
            const popup = document.getElementById(popupId);
            if (event.target === popup) {
                popup.style.display = 'none';
            }
        });
    });

    // Función para mostrar el siguiente popup
    window.showNextPopup = (currentPopupId, nextPopupId) => {
        document.getElementById(currentPopupId).style.display = 'none';
        document.getElementById(nextPopupId).style.display = 'flex';
    };

    // Manejo de envío de formularios
    const handleFormSubmit = (event, form, nextPopupId) => {
        event.preventDefault();
        let formPartData = new FormData(form);
        formPartData.forEach((value, key) => formData.append(key, value));
        if (nextPopupId) {
            showNextPopup(form.parentElement.parentElement.id, nextPopupId);
        } else {
            submitFormData();
        }
    };

    createOrdenPopups.forEach((popupId, index) => {
        const form = document.getElementById(`createOrdenForm${String.fromCharCode(65 + index)}`);
        if (form) {
            form.addEventListener('submit', (event) => handleFormSubmit(event, form, createOrdenPopups[index + 1]));
        }
    });

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
                        <td>${orden.marca}</td>
                        <td>${orden.modelo}</td>
                        <td>${orden.serie}</td>
                        <td>${orden.nro_bien}</td>
                        <td>${orden.ano}</td>
                        <td>${orden.serial_motor}</td>
                        <td>
                            <button onclick="eliminarOrden(${orden.id})">Eliminar</button>
                            <button onclick="verDetallesOrden(${orden.id})">Detalles</button>
                        </td>
                    `;
                    tbody.appendChild(row);
                });
            })
            .catch(error => console.error('Error fetching orders:', error));
    };

    // Función para mostrar los detalles de una orden
    function detallesOrden(id) {
        // Configurar la solicitud AJAX para obtener detalles de la orden
        fetch('detallesOrden.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ id: id }),
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                mostrarDetallesOrden(data.orden); // Suponiendo que tienes una función para mostrar los detalles
            } else {
                alert(data.message); // Mostrar mensaje de error si no se pudieron obtener los detalles
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Hubo un problema al obtener los detalles de la orden');
        });
    }

    // Función para mostrar detalles de la orden en la interfaz (opcional)
    function mostrarDetallesOrden(orden) {
        console.log(orden);
    }

    // Función para enviar los datos del formulario completo
    window.submitFormData = () => {
        fetch('createOrden.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                alert('Orden de trabajo creada exitosamente');
                fetchOrdenes();
            } else {
                alert('Error al crear la orden de trabajo: ' + data.message);
            }
        })
        .catch(error => {
            console.error('Error:', error);
            alert('Error al crear la orden de trabajo');
        });
    };

    // Función para filtrar las órdenes según el texto de búsqueda
    const filtrarOrdenes = () => {
        const searchInput = document.getElementById('searchInputorden').value.toLowerCase();
        const rows = document.querySelectorAll('#tablaOrdenes tbody tr');
        rows.forEach(row => {
            const cells = Array.from(row.children);
            const match = cells.some(cell => cell.textContent.toLowerCase().includes(searchInput));
            row.style.display = match ? '' : 'none';
        });
    };

    // Agregar evento de búsqueda
    const searchInputorden = document.getElementById('searchInputorden');
    if (searchInputorden) {
        searchInputorden.addEventListener('input', filtrarOrdenes);
    }

    // Llamar a fetchOrdenes al cargar la página para mostrar las órdenes existentes
    fetchOrdenes();

});

// Evento para seleccionar cliente
const clienteSelect = document.getElementById('clienteSelect');
if (clienteSelect) {
    clienteSelect.addEventListener('change', (e) => {
        const clienteId = e.target.value;
        if (clienteId) {
            fetchReportesPorCliente(clienteId);
        } else {
            console.error("No se ha seleccionado un cliente.");
        }
    });
} else {
    console.error("El elemento clienteSelect no existe en el DOM.");
}
