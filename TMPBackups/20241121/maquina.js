document.addEventListener('DOMContentLoaded', () => {
    const adminId = 1; // Ajusta el admin_id aquí o establece una forma de obtenerlo dinámicamente

    const getCurrentPage = () => {
        const path = window.location.pathname;
        return path.substring(path.lastIndexOf('/') + 1);
    };

    const activarMenuHover = () => {
        const currentPage = getCurrentPage();
        const menuItems = document.querySelectorAll('.navigation ul li a');

        menuItems.forEach(item => {
            item.parentElement.classList.remove('hovered');
            const pageName = item.getAttribute('href').split('/').pop();
            if (pageName === currentPage) {
                item.parentElement.classList.add('hovered');
            }
        });
    };

 // Fetch lista de clientes
    const fetchClientList = () => {
        fetch(`Clientlist.php?admin_id=${adminId}`, { credentials: 'include' })
            .then(response => response.json())
            .then(data => {
                const clienteSelect = document.getElementById('cliente_id');
                clienteSelect.innerHTML = ''; // Limpiar opciones previas

                if (data.success && data.data.length > 0) {
                    data.data.forEach(cliente => {
                        const option = document.createElement('option');
                        option.value = cliente.id;
                        option.textContent = `${cliente.nombre} ${cliente.apellido} (${cliente.empresa || 'Sin empresa'})`;
                        clienteSelect.appendChild(option);
                    });
                } else {
                    console.warn("No se encontraron clientes:", data.message);
                    clienteSelect.innerHTML = '<option value="">No hay clientes disponibles</option>';
                }
            })
            .catch(error => {
                console.error('Error al cargar la lista de clientes:', error);
            });
    };


    activarMenuHover();

    const toggle = document.querySelector(".toggle");
    const navigation = document.querySelector(".navigation");
    const main = document.querySelector(".main");

    toggle.onclick = function () {
        navigation.classList.toggle("active");
        main.classList.toggle("active");
    };

    const createMaquinaBtn = document.querySelector('.create-Maquina-btn');
    const createMaquinaPopups = [
        'createMaquinaPopupA',
        'createMaquinaPopupB',
        'createMaquinaPopupC',
        'createMaquinaPopupD'
    ];

    let formData = {
        popupA: {},
        popupB: {},
        popupC: {},
        popupD: {}
    };

    createMaquinaBtn.addEventListener('click', () => {
        document.getElementById('createMaquinaPopupA').style.display = 'flex';
    });

    window.addEventListener('click', (event) => {
        createMaquinaPopups.forEach(popupId => {
            const popup = document.getElementById(popupId);
            if (event.target === popup) {
                popup.style.display = 'none';
            }
        });
    });

window.showNextPopup = (currentPopupId, nextPopupId) => {
    const currentPopup = document.getElementById(currentPopupId);
    const form = currentPopup.querySelector('form');
    const popupKey = currentPopupId.replace('createMaquinaPopup', 'popup'); // Convierte el ID del popup a su clave en formData

    if (form) {
        const formPartData = new FormData(form);
        const formValues = {};
        
        // Convierte FormData a un objeto plano
        formPartData.forEach((value, key) => {
            formValues[key] = value;
        });

        // Guarda los datos en formData bajo la clave correspondiente
        formData[popupKey] = { ...formValues };

        // Imprime para depuración
        console.log(`Datos extraídos de ${popupKey}:`, formValues);
        console.log('Estado acumulado de formData:', formData); // Aquí verificas toda la data acumulada
    } else {
        console.error(`No se encontró un formulario en ${currentPopupId}`);
    }

    // Ocultar el popup actual y mostrar el siguiente
    currentPopup.style.display = 'none';
    if (nextPopupId) {
        const nextPopup = document.getElementById(nextPopupId);
        nextPopup.style.display = 'flex';
    }
};


    const handleFormSubmit = (event, form, nextPopupId, popupKey) => {
        event.preventDefault();

        let formPartData = new FormData(form);
	let formValues = {};

        formPartData.forEach((value, key) => {
            formValues[key] = value;
        });

	// Asigna los valores al bloque correspondiente en formData
    	formData[popupKey] = formValues;
	
	console.log(`Datos guardados en ${popupKey}:`, formData[popupKey]); // Depuración
        showNextPopup(form.parentElement.parentElement.id, nextPopupId);
    };

    const setupFormHandlers = () => {
        createMaquinaPopups.forEach((popupId, index) => {
            const form = document.getElementById(`createMaquinaForm${String.fromCharCode(65 + index)}`);
            const popupKey = `popup${String.fromCharCode(65 + index)}`;
            if (form) {
                form.addEventListener('submit', (event) => {
                    handleFormSubmit(event, form, createMaquinaPopups[index + 1], popupKey);
                });
            }
        });
    };

    setupFormHandlers();



window.submitFormData = () => {
    // Captura los datos del último popup (D)
    const popupDForm = document.getElementById('createMaquinaFormD');
    if (popupDForm) {
        const formPartData = new FormData(popupDForm);
        const formValues = {};

        formPartData.forEach((value, key) => {
            formValues[key] = value;
        });

        // Agrega los datos del último formulario al objeto formData
        formData.popupD = { ...formValues };

        // Imprime los datos del último formulario
        console.log("Datos extraídos de popupD:", formValues);
    } else {
        console.error("No se encontró el formulario en popupD");
    }

    // Imprime el objeto completo antes de enviarlo
    console.log("Datos completos a enviar al servidor:", { ...formData, admin_id: adminId });

    // Envía los datos al servidor
    fetch('createMaquina.php', {
        method: 'POST',
        credentials: 'include', // Incluye las cookies de sesión
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ ...formData, admin_id: adminId }) // Enviar datos al servidor
    })
    .then(response => response.json())
    .then(data => {
        console.log("Respuesta del servidor:", data);
        if (data.success) {
            alert('Máquina creada exitosamente');
            fetchMaquinas();
            createMaquinaPopups.forEach(popupId => {
                document.getElementById(popupId).style.display = 'none';
            });
            formData = { popupA: {}, popupB: {}, popupC: {}, popupD: {} }; // Reinicia formData
        } else {
            alert('Error al crear la máquina: ' + data.message);
        }
    })
    .catch(error => {
        console.error('Error en la solicitud:', error);
        alert('Error al crear la máquina');
    });
};

    const fetchMaquinas = () => {
        fetch(`getMaquinas.php?admin_id=${adminId}`)
            .then(response => {
                console.log('Response status:', response.status);
                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                return response.json();
            })
            .then(maquinas => {
                const tbody = document.querySelector('#tablaMaquinas tbody');
                tbody.innerHTML = ''; // Limpia la tabla antes de llenarla

                maquinas.forEach(maquina => {
                    const row = document.createElement('tr');
                    row.innerHTML = `
                        <td>${maquina.cliente_nombre || ''}</td>
                        <td>${maquina.equipo || ''}</td>
                        <td>${maquina.referencia || ''}</td>
                        <td>${maquina.modelo || ''}</td>
                        <td>${maquina.fabricante || ''}</td>
                        <td>${maquina.serial_carroceria || ''}</td>
                        <td>${maquina.marca || ''}</td>
                        <td>${maquina.ubicacion || ''}</td>
                        <td>${maquina.serie || ''}</td>
                        <td>${maquina.serial_motor || ''}</td>
                        <td>${maquina.color || ''}</td>
                        <td>${maquina.tiempo_funcionamiento || ''}</td>
                        <td>
                            <button onclick="generarQR(${JSON.stringify(maquina)})">Generar QR</button>
                        </td>
                    `;
                    tbody.appendChild(row);
                });
            })
            .catch(error => {
                console.error('Error fetching machines:', error);
                alert('Ocurrió un error al intentar obtener las máquinas. Verifica la consola para más detalles.');
            });
    };


document.addEventListener('DOMContentLoaded', () => {
    fetchClientList(); // Cargar lista de clientes
    fetchMaquinas(); // Cargar máquinas
    activarMenuHover(); // Configurar menú activo
});



    const filtrarMaquinas = () => {
        const searchInput = document.getElementById('searchInputmaquina').value.toLowerCase();
        const rows = document.querySelectorAll('#tablaMaquinas tbody tr');
        rows.forEach(row => {
            const cells = Array.from(row.children);
            const match = cells.some(cell => cell.textContent.toLowerCase().includes(searchInput));
            row.style.display = match ? '' : 'none';
        });
    };

    document.getElementById('searchInputmaquina').addEventListener('input', filtrarMaquinas);
    fetchMaquinas();
});

