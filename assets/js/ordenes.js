// Función para obtener órdenes desde la base de datos
const fetchOrdenes = () => {
    fetch('getOrdenes.php')
        .then(response => response.json())
        .then(data => {
            console.log(data);  // Ver la respuesta de la API en la consola
            const tbody = document.querySelector('#tablaOrdenesTrabajo tbody');
            tbody.innerHTML = ''; // Limpiar contenido previo
            data.forEach(orden => {
                const row = document.createElement('tr');
                
                // Reemplazar null por un valor vacío o un texto estándar
                const observacionGeneral = orden.observacion_general || "No disponible";
                
                row.innerHTML = `
                    <td>${orden.cliente_nombre}</td>
                    <td>${orden.equipo}</td>
                    <td>${orden.objetivo}</td>
                    <td>${orden.tipo_trabajo}</td>
                    <td>${observacionGeneral}</td>
                `;
                tbody.appendChild(row);
            });
        })
        .catch(error => console.error('Error fetching orders:', error));
}

// Llamar a la función cuando se carga la página
document.addEventListener('DOMContentLoaded', () => {
    fetchOrdenes();  // Llamar a la función después de cargar la página
});
