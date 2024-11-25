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
        return path.substring(path.lastIndexOf('/') + 1); // Obtener el nombre del archivo (ej. Clientes.html)
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



// Función para mostrar los técnicos en la tabla

const tablaTecnicos = document.querySelector('#tablaTecnicos tbody');

    // Función para mostrar los técnicos en la tabla
    const mostrarTecnicos = (tecnicos) => {
        tablaTecnicos.innerHTML = ''; // Limpiar la tabla antes de mostrar los datos

        // Iterar sobre los datos y construir las filas
        tecnicos.forEach(tecnico => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${tecnico.nombre}</td>
                <td>${tecnico.apellido}</td>
                <td>${tecnico.empresa}</td>
                <td>${tecnico.categoria_id}</td>
            `;
            tablaTecnicos.appendChild(row);
        });
    };

    // Función para obtener técnicos desde el backend
    const obtenerTecnicos = async () => {
        try {
            const adminId = 1; // Cambia este valor si es dinámico
            const response = await fetch(`gettecnicos.php?admin_id=${adminId}`);

            if (!response.ok) {
                throw new Error(`Error al obtener técnicos: ${response.statusText}`);
            }

            const tecnicos = await response.json();

            // Verificar si la respuesta contiene un error
            if (tecnicos.error) {
                console.error('Error desde el backend:', tecnicos.error);
                return;
            }

            // Llenar la tabla con los datos
            mostrarTecnicos(tecnicos);
        } catch (error) {
            console.error('Error al obtener técnicos:', error);
        }
    };

    // Manejo de la búsqueda
    const searchInput = document.querySelector('#searchInput');
    searchInput.addEventListener('input', () => {
        const searchTerm = searchInput.value.toLowerCase();
        const filas = document.querySelectorAll('#tablaClientes tbody tr');

        filas.forEach(fila => {
            const nombre = fila.children[0].textContent.toLowerCase();
            const apellido = fila.children[1].textContent.toLowerCase();
            
            if (nombre.includes(searchTerm) || apellido.includes(searchTerm)) {
                fila.style.display = ''; // Mostrar la fila
            } else {
                fila.style.display = 'none'; // Ocultar la fila
            }
        });
    });

    // Crear cliente
    const createClientPopup = document.getElementById('createClientPopup');
    const createClientForm = document.getElementById('createClientForm');
    const createClientButton = document.querySelector('.create-client-btn');
    const closePopupButton = document.getElementById('closePopup');

    createClientButton.addEventListener('click', () => {
        createClientPopup.style.display = 'flex';
    });

    closePopupButton.addEventListener('click', () => {
        createClientPopup.style.display = 'none';
    });

    createClientForm.addEventListener('submit', async (event) => {
        event.preventDefault(); // Evitar el envío normal del formulario
    
        // Obtener el admin_id del localStorage
        const adminId = localStorage.getItem('admin_id');
        if (adminId) {
            // Asignar el admin_id al campo oculto del formulario
            document.getElementById('admin_id').value = adminId;
        } else {
            alert('No estás autenticado. No se puede crear el cliente.');
            return;
        }
    
        const formData = new FormData(createClientForm);
        
        try {
            let response = await fetch(createClientForm.action, {
                method: 'POST',
                body: formData
            });
    
            console.log(await response.text()); // Muestra la respuesta del servidor
    
            // Comprobar si la respuesta es exitosa
            if (!response.ok) {
                throw new Error('Error al crear el cliente');
            }
    
            // Obtener los clientes nuevamente para actualizar la tabla
            await obtenerClientes();
    
            // Cerrar el popup
            createClientPopup.style.display = 'none';
        } catch (error) {
            console.error('Error al crear el cliente:', error);
            alert(error.message); // Muestra el mensaje de error
        }
    });
    
    
    
    // Activar el menú hover
    activarMenuHover();
    // Obtener clientes al cargar la página
    obtenerTecnicos();
});
