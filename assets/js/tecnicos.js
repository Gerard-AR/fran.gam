document.addEventListener('DOMContentLoaded', () => {
    const adminId = localStorage.getItem('admin_id');

    // Verificar autenticación
    if (!adminId) {
        alert('No estás autenticado. Redirigiendo a la página de inicio de sesión.');
        window.location.href = 'index.html';
        return;
    }

    // Elementos del popup
    const createClientPopup = document.getElementById('createClientPopup');
    const createClientForm = document.getElementById('createClientForm');
    const createClientButton = document.querySelector('.create-client-btn');
    const closePopupButton = document.getElementById('closePopup');

    // Abrir el popup
    createClientButton.addEventListener('click', () => {
        createClientPopup.style.display = 'flex';
    });

    // Cerrar el popup
    closePopupButton.addEventListener('click', () => {
        createClientPopup.style.display = 'none';
    });

    // Función para obtener empresas y llenar el campo select
    const cargarEmpresas = async () => {
        try {
            const response = await fetch(`getEmpresas.php?admin_id=${adminId}`);
            if (!response.ok) {
                throw new Error(`Error al obtener empresas: ${response.statusText}`);
            }

            const data = await response.json();
            if (data.success) {
                const selectEmpresa = document.getElementById('empresa');
                selectEmpresa.innerHTML = ''; // Limpiar opciones previas

                data.empresas.forEach(empresa => {
                    const option = document.createElement('option');
                    option.value = empresa.empresa;
                    option.textContent = empresa.empresa;
                    selectEmpresa.appendChild(option);
                });
            } else {
                alert('Error al cargar las empresas: ' + data.message);
            }
        } catch (error) {
            console.error('Error al cargar empresas:', error);
            alert('Ocurrió un error al cargar las empresas.');
        }
    };

    // Enviar formulario de creación de técnico
    createClientForm.addEventListener('submit', async (event) => {
        event.preventDefault(); // Evitar el envío normal del formulario

        const formData = new FormData(createClientForm);
        formData.append('admin_id', adminId); // Agregar admin_id al formulario

        try {
            const response = await fetch(createClientForm.action, {
                method: 'POST',
                body: formData,
            });

            const data = await response.json();

            if (data.success) {
                alert(data.message);
                createClientPopup.style.display = 'none';
                createClientForm.reset();
                await obtenerTecnicos();
            } else {
                alert('Error: ' + data.message);
            }
        } catch (error) {
            console.error('Error al crear técnico:', error);
            alert('Ocurrió un error al crear el técnico.');
        }
    });

    // Función para mostrar los técnicos en la tabla
    const mostrarTecnicos = (tecnicos) => {
        const tablaTecnicos = document.querySelector('#tablaTecnicos tbody');
        tablaTecnicos.innerHTML = ''; // Limpiar la tabla

        tecnicos.forEach(tecnico => {
            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${tecnico.nombre}</td>
                <td>${tecnico.apellido}</td>
                <td>${tecnico.empresa}</td>
                <td>${tecnico.categoria_codigo}</td>
            `;
            tablaTecnicos.appendChild(row);
        });
    };

    // Función para obtener técnicos desde el backend
    const obtenerTecnicos = async () => {
        try {
            const response = await fetch(`getTecnicos.php?admin_id=${adminId}`);

            if (!response.ok) {
                throw new Error('Error al obtener técnicos');
            }

            const tecnicos = await response.json();
            mostrarTecnicos(tecnicos);
        } catch (error) {
            console.error('Error al obtener técnicos:', error);
        }
    };

    // Llamar las funciones al cargar la página
    cargarEmpresas();
    obtenerTecnicos();
});

