document.addEventListener('DOMContentLoaded', () => {
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

       
});
