document.addEventListener('DOMContentLoaded', () => {
    const createClientPopup = document.getElementById('createClientPopup');
    const createClientForm = document.getElementById('createClientForm');
    const closePopup = document.getElementById('closePopup');
    const createClientBtn = document.querySelector('.create-client-btn');
    const submitCreateClient = document.getElementById('submitCreateClient');

    // Mostrar popup
    createClientBtn.addEventListener('click', () => {
        createClientPopup.style.display = 'flex';
    });

    // Cerrar popup
    closePopup.addEventListener('click', () => {
        createClientPopup.style.display = 'none';
        createClientForm.reset();
    });

    // Enviar formulario
    submitCreateClient.addEventListener('click', () => {
        const formData = new FormData(createClientForm);

        fetch('createClient.php', {
            method: 'POST',
            body: formData,
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('Cliente creado exitosamente');
                    createClientPopup.style.display = 'none';
                    createClientForm.reset();
                    fetchClientes(); // Refrescar la lista
                } else {
                    alert('Error al crear el cliente: ' + data.message);
                }
            })
            .catch(error => console.error('Error:', error));
    });

    // Cargar lista de clientes
    const fetchClientes = () => {
        fetch('getclients.php')
            .then(response => response.json())
            .then(clientes => {
                const tbody = document.querySelector('#tablaClientes tbody');
                tbody.innerHTML = ''; // Limpiar la tabla

                clientes.forEach(cliente => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td>${cliente.nombre}</td>
                        <td>${cliente.apellido}</td>
                        <td>${cliente.empresa}</td>
                        <td>${cliente.cargo}</td>
                    `;
                    tbody.appendChild(row);
                });
            })
            .catch(error => console.error('Error al cargar clientes:', error));
    };

    fetchClientes(); // Cargar clientes al inicio
});

