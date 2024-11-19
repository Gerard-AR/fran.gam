document.addEventListener('DOMContentLoaded', () => {
    // Función para manejar el registro
    const registerForm = document.querySelector('.signup form');
    registerForm.addEventListener('submit', function(event) {
        event.preventDefault();

        const formData = new FormData(registerForm);
        
        fetch('registro.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                alert('Registro exitoso');
                // Redireccionar a la página principal
                window.location.href = 'index.html';
            } else {
                alert('Error en el registro: ' + data.message);
            }
        })
        .catch(error => {
            console.error('Error:', error);
        });
    });

    // Función para manejar el login
    const loginForm = document.querySelector('.login form');
    loginForm.addEventListener('submit', function(event) {
        event.preventDefault();

        const formData = new FormData(loginForm);

        fetch('login.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.json())
        .then(data => {
            if (data.success) {
                // Almacenar el admin_id en el localStorage
                localStorage.setItem('admin_id', data.admin_id);
                
                alert('Login exitoso');
                // Redireccionar a la página principal
                window.location.href = 'inicio.html';
            } else {
                alert('Error en el login: ' + data.message);
            }
        })
        .catch(error => {
            console.error('Error:', error);
        });
    });
});
