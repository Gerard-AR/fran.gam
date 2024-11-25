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
        document.getElementById(currentPopupId).style.display = 'none';
        if (nextPopupId) {
            document.getElementById(nextPopupId).style.display = 'flex';
        }
    };

    const handleFormSubmit = (event, form, nextPopupId, popupKey) => {
        event.preventDefault();
        let formPartData = new FormData(form);
        formPartData.forEach((value, key) => {
            formData[popupKey][key] = value;
        });
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
        fetch('createMaquina.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ ...formData, admin_id: adminId })
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                alert('Máquina creada exitosamente');
                fetchMaquinas();
                createMaquinaPopups.forEach(popupId => {
                    document.getElementById(popupId).style.display = 'none';
                });
                formData = { popupA: {}, popupB: {}, popupC: {}, popupD: {} };
            } else {
                alert('Error al crear la máquina: ' + data.message);
            }
        })
        .catch(error => {
            console.error('Error:', error);
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
