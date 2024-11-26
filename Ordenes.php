<?php
session_start();
if (!isset($_SESSION['admin_id'])) {
    header("Location: login.php"); // Redirige al login si no hay sesión
    exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ordenes Ejemplo</title>
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="./assets/css/style1.css">
    <link rel="stylesheet" href="assets/css/order.css">
    <div id="main-content" data-admin-id="<?php echo htmlspecialchars($_SESSION['admin_id']); ?>"></div>
</head>

<body>
    <!-- =============== Navigation ================ -->
    <div class="container">
        <div class="navigation">
            <ul>
                <li>
                    <a href="#" id="logo">
                        <span class="icon">
                            <img src="assets/imgs/logo1.png" alt="Nuevo Logo">
                        </span>
                        <span class="title">GAM-BA</span>
                    </a>
                </li>
    
                <li>
                    <a href="inicio.php" id="alertLink" data-page="index">
                        <span class="icon">
                            <svg width="25" height="25" viewBox="0 0 98.88 94.28" fill="currentColor"><path d="M69,6.9v7.77L78.18,22V6.9Zm16.1,20.64V5.75A5.74,5.74,0,0,0,79.33,0H67.83a5.75,5.75,0,0,0-5.75,5.75v3.4l-1.87-1.5a17.25,17.25,0,0,0-21.55,0L1.29,37.55A3.45,3.45,0,0,0,5.6,42.93l3.6-2.87V87.38H3.45a3.45,3.45,0,0,0,0,6.9h92a3.45,3.45,0,0,0,0-6.9H89.68V40.06l3.59,2.87a3.45,3.45,0,1,0,4.31-5.38Zm-2.3,7L55.9,13A10.33,10.33,0,0,0,43,13L16.1,34.54V87.38H32.19V67.61a62.19,62.19,0,0,1,.29-7.81,9.41,9.41,0,0,1,8.93-8.93,64.22,64.22,0,0,1,7.8-.28h.45a64.4,64.4,0,0,1,7.81.28A9.43,9.43,0,0,1,66.4,59.8a64.4,64.4,0,0,1,.28,7.81V87.38h16.1Zm-23,52.84V67.83a59,59,0,0,0-.23-7.11c-.2-1.49-.52-2-.78-2.22s-.74-.59-2.23-.79a59.53,59.53,0,0,0-7.11-.22,59.44,59.44,0,0,0-7.11.22c-1.5.2-2,.52-2.23.79a3.54,3.54,0,0,0-.79,2.22,61.78,61.78,0,0,0-.22,7.11V87.38ZM49.44,27.59a5.75,5.75,0,1,0,5.75,5.75A5.75,5.75,0,0,0,49.44,27.59ZM36.79,33.34A12.65,12.65,0,1,1,49.44,46,12.65,12.65,0,0,1,36.79,33.34Z"/></svg>
                        </span>
                        <span class="title">Inicio</span>
                    </a>
                </li>
    
                <li>
                    <a href="Clientes.php" id="alertLink" class="active" data-page="clientes">
                        <span class="icon">
                            <svg width="25" height="25" viewBox="0 0 90.2 90.2" fill="currentColor"><path d="M11.43,52.08c6.63-3.73,15.57-5.93,25.28-5.93S55.36,48.35,62,52.08s11.44,9.24,11.44,16.09v.43c0,4.88,0,11-5.36,15.36-2.64,2.15-6.33,3.68-11.32,4.69a103.16,103.16,0,0,1-20,1.55,103.16,103.16,0,0,1-20-1.55c-5-1-8.68-2.54-11.32-4.69C0,79.59,0,73.48,0,68.6v-.43C0,61.32,4.91,55.75,11.43,52.08Zm3.09,5.49c-5.62,3.16-8.23,7-8.23,10.6,0,5.49.17,8.58,3,10.91,1.55,1.27,4.15,2.51,8.6,3.41a98.36,98.36,0,0,0,18.78,1.42,98.43,98.43,0,0,0,18.78-1.42c4.45-.9,7-2.14,8.6-3.41,2.87-2.33,3-5.42,3-10.91,0-3.57-2.61-7.44-8.23-10.6s-13.36-5.13-22.19-5.13S20,54.46,14.52,57.57Z"/><path d="M64.78,26a10,10,0,0,1,9.69,1,10,10,0,0,1,9.69-1,10.31,10.31,0,0,1,6,9.45,13.38,13.38,0,0,1-3.82,9.24,37.65,37.65,0,0,1-5.22,4.45l-1,.72h0a20.87,20.87,0,0,1-2.28,1.57,7,7,0,0,1-3.44,1,7.11,7.11,0,0,1-3.45-1,21.89,21.89,0,0,1-2.28-1.57h0l-1-.72a36.52,36.52,0,0,1-5.22-4.45,13.34,13.34,0,0,1-3.82-9.24A10.29,10.29,0,0,1,64.78,26ZM65,35.45a4,4,0,0,1,2.29-3.7c1.12-.49,2.9-.54,4.92,1.49a3.16,3.16,0,0,0,4.46,0c2-2,3.79-2,4.91-1.49a4,4,0,0,1,2.3,3.7,7.1,7.1,0,0,1-2.17,5A29.26,29.26,0,0,1,77.59,44c-.39.29-.8.59-1.21.91A13.58,13.58,0,0,1,74.81,46a2,2,0,0,1-.34.17,1.69,1.69,0,0,1-.35-.17,14.51,14.51,0,0,1-1.57-1.1L71.35,44a29.93,29.93,0,0,1-4.16-3.51A7.13,7.13,0,0,1,65,35.45Z"/></svg>
                        </span>
                        <span class="title">Clientes</span>
                    </a>
                </li>
    
                <li>
                    <a href="Alertas.php" id="alertLink" data-page="alertas">
                        <span class="icon">
                            <svg width="25" height="25" viewBox="0 0 80.88 86.22" fill="currentColor"><path d="M40.44,0A31.08,31.08,0,0,0,9.36,31.08V33.9A14.12,14.12,0,0,1,7,41.75L2.38,48.66a14.13,14.13,0,0,0,8,21.46c3,.82,6.09,1.52,9.16,2.09v0a22.11,22.11,0,0,0,20.86,14,22.1,22.1,0,0,0,20.86-14v0c3.07-.57,6.13-1.27,9.16-2.09a14.12,14.12,0,0,0,8-21.46l-4.6-6.91a14.13,14.13,0,0,1-2.38-7.85V31.08A31.08,31.08,0,0,0,40.44,0ZM54,73.33a113.57,113.57,0,0,1-27.08,0,16.78,16.78,0,0,0,27.08,0ZM15.38,31.08a25.06,25.06,0,0,1,50.12,0V33.9a20.17,20.17,0,0,0,3.39,11.19L73.5,52a8.1,8.1,0,0,1-4.61,12.31,108.09,108.09,0,0,1-56.89,0A8.11,8.11,0,0,1,7.38,52L12,45.09A20.17,20.17,0,0,0,15.38,33.9Z"/></svg>
                        </span>
                        <span class="title">Alertas</span>
                    </a>
                </li>
    
                <li>
                    <a href="Ordenes.php" id="ordersLink" data-page="ordenes">
                        <span class="icon">
                            <svg width="25" height="25" viewBox="0 0 83.73 92.32" fill="currentColor"  ><path d="M21.52,8.63A9.67,9.67,0,0,1,31.13,0H52.6a9.67,9.67,0,0,1,9.61,8.63,55.48,55.48,0,0,1,8.52.68,15,15,0,0,1,8.28,4c2.59,2.59,3.7,5.84,4.22,9.71a117.8,117.8,0,0,1,.5,14.33V63.57a118,118,0,0,1-.5,14.33C82.71,81.76,81.6,85,79,87.6s-5.84,3.7-9.7,4.22a117.89,117.89,0,0,1-14.33.5H28.75a117.89,117.89,0,0,1-14.33-.5c-3.87-.52-7.12-1.63-9.7-4.22S1,81.76.5,77.9A118,118,0,0,1,0,63.57V37.34A117.8,117.8,0,0,1,.5,23C1,19.14,2.13,15.89,4.72,13.3a15,15,0,0,1,8.27-4A55.73,55.73,0,0,1,21.52,8.63Zm0,6.45a47.44,47.44,0,0,0-7.37.57,8.56,8.56,0,0,0-4.89,2.21c-1.19,1.19-2,2.85-2.39,6a116.71,116.71,0,0,0-.44,13.7V63.33A116.81,116.81,0,0,0,6.88,77c.43,3.15,1.2,4.82,2.39,6s2.86,2,6,2.38a114.08,114.08,0,0,0,13.7.45H54.75a114.08,114.08,0,0,0,13.7-.45c3.15-.42,4.82-1.19,6-2.38s2-2.86,2.39-6a116.81,116.81,0,0,0,.44-13.71V37.57a116.71,116.71,0,0,0-.44-13.7c-.43-3.16-1.2-4.82-2.39-6a8.56,8.56,0,0,0-4.89-2.21,47.44,47.44,0,0,0-7.37-.57,9.67,9.67,0,0,1-9.6,8.54H31.13A9.67,9.67,0,0,1,21.53,15.08Zm9.6-8.64a3.22,3.22,0,0,0-3.22,3.22V14a3.23,3.23,0,0,0,3.22,3.23H52.6A3.23,3.23,0,0,0,55.82,14V9.66A3.22,3.22,0,0,0,52.6,6.44ZM17.18,39.72A3.22,3.22,0,0,1,20.4,36.5h2.14a3.22,3.22,0,1,1,0,6.44H20.4A3.22,3.22,0,0,1,17.18,39.72Zm15,0a3.22,3.22,0,0,1,3.22-3.22H63.33a3.22,3.22,0,0,1,0,6.44H35.42A3.22,3.22,0,0,1,32.2,39.72Zm-15,15a3.22,3.22,0,0,1,3.22-3.22h2.14a3.22,3.22,0,1,1,0,6.44H20.4A3.22,3.22,0,0,1,17.18,54.75Zm15,0a3.22,3.22,0,0,1,3.22-3.22H63.33a3.22,3.22,0,0,1,0,6.44H35.42A3.23,3.23,0,0,1,32.2,54.75Zm-15,15a3.22,3.22,0,0,1,3.22-3.22h2.14a3.22,3.22,0,1,1,0,6.44H20.4A3.22,3.22,0,0,1,17.18,69.77Zm15,0a3.23,3.23,0,0,1,3.22-3.22H63.33a3.22,3.22,0,0,1,0,6.44H35.42A3.22,3.22,0,0,1,32.2,69.77Z"/></svg>
                        </span>
                        <span class="title">Órdenes de Trabajo</span>
                    </a>
                </li>
                <li>
                    <a href="OrdenesMantenimiento.php" id="ordersLink" data-page="ordenes">
                        <span class="icon">
                            <svg width="25" height="25" viewBox="0 0 90.82 90.81" fill="currentColor"><path d="M86.45,32.69,76.21,31.18a35.17,35.17,0,0,0-3.39-6l3.9-10A4,4,0,0,0,75,10.31L60.29,1.57a3.93,3.93,0,0,0-5.16,1l-6.38,8.39a28.7,28.7,0,0,0-6.68,0l-6.39-8.4a3.94,3.94,0,0,0-5.13-1L15.86,10.28a4.12,4.12,0,0,0-1.76,5l3.89,10a34.43,34.43,0,0,0-3.38,6L4.4,32.68a4,4,0,0,0-3.4,4v17.5a4,4,0,0,0,3.37,4l10.24,1.51a35.17,35.17,0,0,0,3.39,6l-3.9,10a4,4,0,0,0,1.72,4.92l14.77,8.78a4.07,4.07,0,0,0,2,.52,3.9,3.9,0,0,0,3.12-1.54l6.38-8.39a35.49,35.49,0,0,0,6.68,0l6.39,8.4a4,4,0,0,0,5.14,1l4.25-2.53a1.85,1.85,0,1,0-1.89-3.18L58.08,86l-7-9.23a1.87,1.87,0,0,0-1.71-.72,35.7,35.7,0,0,1-7.87,0,1.88,1.88,0,0,0-1.71.72l-7.33,9.29L17.68,77.31a.32.32,0,0,1-.12-.38L21.82,66a1.85,1.85,0,0,0-.23-1.76,32,32,0,0,1-3.94-7,1.86,1.86,0,0,0-1.46-1.15L4.92,54.47s-.2-.31-.21-.31V36.66l.21-.32,11.27-1.66a1.86,1.86,0,0,0,1.46-1.15,30.55,30.55,0,0,1,3.93-7,1.86,1.86,0,0,0,.24-1.78L17.58,14a.43.43,0,0,1,.14-.47l15-8.69,7,9.23a1.86,1.86,0,0,0,1.71.71,26.55,26.55,0,0,1,7.86,0A1.86,1.86,0,0,0,51.06,14l7.33-9.29,14.76,8.78a.31.31,0,0,1,.12.38L69,24.78a1.89,1.89,0,0,0,.23,1.77,31.38,31.38,0,0,1,4,7,1.87,1.87,0,0,0,1.45,1.15l11.28,1.66s.19.31.2.31v17.5l-.2.31-7.24,1.07a1.85,1.85,0,0,0,.54,3.66l7.2-1.06a4,4,0,0,0,3.4-4V36.66A4,4,0,0,0,86.45,32.69Z"/><path d="M67,53.25a9.74,9.74,0,0,1-3.08-7.19c.19-4.57-1.72-8.93-5.84-13.33A17.66,17.66,0,0,0,45.17,26.9a18.24,18.24,0,0,0-11.33,4.16,1.85,1.85,0,0,0,.21,3l11.31,6.78a10.08,10.08,0,0,1-5.42,8L29.81,42.76a2,2,0,0,0-1.91,0,1.85,1.85,0,0,0-1,1.51,18.3,18.3,0,0,0,5,13.81A18.58,18.58,0,0,0,45.41,63.9a17,17,0,0,0,4.23-.56L73.26,87a9.61,9.61,0,0,0,6.86,2.85,9.72,9.72,0,0,0,9.7-9.7A9.61,9.61,0,0,0,87,73.25ZM80.12,86.11h0a6,6,0,0,1-4.24-1.76L51.49,60a1.9,1.9,0,0,0-1.84-.47,14.3,14.3,0,0,1-4.23.7A14.81,14.81,0,0,1,30.78,47.66l8.13,4.88a1.9,1.9,0,0,0,1.78.07l.78-.39a13.77,13.77,0,0,0,7.64-12.37,1.86,1.86,0,0,0-.9-1.59L38.44,32.4a14.43,14.43,0,0,1,6.78-1.8,14,14,0,0,1,10.14,4.66c3.46,3.69,5,7.07,4.84,10.64a13.46,13.46,0,0,0,4.16,10l20,20a6,6,0,0,1-4.24,10.24Z"/></svg>
                        </span>
                        <span class="title">Órdenes de Mantenimiento</span>
                    </a>
                </li>
    
                <li>
                    <a href="Machine.php" data-page="machine">
                        <span class="icon">
                            <svg width="25" height="25" viewBox="0 0 96.53 96.35" fill="currentColor"><path d="M14.34,96.35h47A14.29,14.29,0,0,0,66,68.54V51.12a2.39,2.39,0,0,0-.3-1.11s0-.08,0-.11l-5.56-9.63,9.61-12.64,17,20.72H74a2.46,2.46,0,0,0-2.45,2.46,2.61,2.61,0,0,0,0,.48c.18.87.33,1.74.5,2.59.36,1.89.73,3.84,1.26,5.75a10.53,10.53,0,0,0,10,7.52A9.71,9.71,0,0,0,85.07,67c1.64-.29,3.24-.65,4.86-1l2.57-.56a3.25,3.25,0,0,0,2.69-3c.21-2,.45-4,.69-6l.63-5.39s0-.09,0-.14a.59.59,0,0,0,0-.14V40.1a12.18,12.18,0,0,0-1-4.79L83.37,6.6A10.78,10.78,0,0,0,65.8,3.16L41.4,27.45H30.17A12.28,12.28,0,0,0,17.9,39.72v8.94H12.8V35.9A6.48,6.48,0,0,0,8,29.65l-3.82-1a2.46,2.46,0,0,0-1.28,4.75l3.81,1a1.54,1.54,0,0,1,1.15,1.5V49.74A12.29,12.29,0,0,0,.61,60.94V77.82c0,.07,0,.14,0,.21A14,14,0,0,0,0,82,14.34,14.34,0,0,0,14.34,96.35ZM70.77,82a9.43,9.43,0,0,1-9.42,9.41h-47a9.42,9.42,0,0,1,0-18.83h47A9.44,9.44,0,0,1,70.77,82Zm-48-28.47H61.1V67.7H22.81Zm19.6-21.21h7a.82.82,0,0,1,.71.41l4.91,8.52v0l4.24,7.35H38.16V32.36ZM91,55.87c-.2,1.66-.41,3.33-.59,5l-1.55.33c-1.55.32-3.1.68-4.67,1a5.56,5.56,0,0,1-6.12-3.86c-.44-1.62-.77-3.29-1.1-5.06H91.32ZM69.26,6.63a5.89,5.89,0,0,1,8.33,0,6,6,0,0,1,1.27,1.88L91,37.22a7.48,7.48,0,0,1,.58,2.88v6.51l-28-34.3Zm-9.19,9.16,6.48,7.92L57.47,35.65l-3.08-5.34a5.72,5.72,0,0,0-5-2.86H48.36ZM30.17,32.36h3.08v16.3H22.81V39.72A7.35,7.35,0,0,1,30.17,32.36ZM12.88,53.57h5V67.7H14.34a14.15,14.15,0,0,0-8.82,3.13V60.94A7.36,7.36,0,0,1,12.88,53.57Z"/><circle cx="20.04" cy="82.03" r="3.5"/><circle cx="31.85" cy="82.03" r="3.5"/><circle cx="43.65" cy="82.03" r="3.5"/><circle cx="55.46" cy="82.03" r="3.5"/></svg>
                        </span>
                        <span class="title">Maquina</span>
                    </a>
                </li>
                <li>
                    <a href="Tecnicos.php" data-page="machine">
                        <span class="icon">
                            <svg width="25" height="25" viewBox="0 0 93.96 94.54" fill="currentColor"><path d="M11.66,40.57a6.3,6.3,0,0,0-6.31,6.31V68.23A7.6,7.6,0,0,0,9.8,75.15L35.68,86.94a25,25,0,0,0,22.81-1.07L86.57,69.75a4,4,0,0,0-2.89-7.31l-28.4,6.7a9.36,9.36,0,0,1-.58,1,9.48,9.48,0,0,1-12.33,3.23L20.14,61.8a2.17,2.17,0,1,1,2-3.85L44.38,69.53A5.14,5.14,0,0,0,50,61L33.38,47.16a28.5,28.5,0,0,0-18.23-6.59ZM56.23,64.45a9.49,9.49,0,0,0-3.41-6.77L36.16,43.82a32.84,32.84,0,0,0-21-7.6H11.66A10.66,10.66,0,0,0,1,46.88V68.23A12,12,0,0,0,8,79.11L33.88,90.9a29.33,29.33,0,0,0,26.77-1.26L88.74,73.53a8.33,8.33,0,0,0-6.06-15.32Z"/><path d="M83.35,42a26.68,26.68,0,0,0,.25-3.71,27.58,27.58,0,0,0-.26-3.78A4.69,4.69,0,0,1,85,30.25l3.33-2.81a.91.91,0,0,0,.2-1.15l-5.22-9.08a.88.88,0,0,0-1.07-.39l-4.13,1.5a4.68,4.68,0,0,1-4.51-.73,26.11,26.11,0,0,0-6.44-3.72,4.69,4.69,0,0,1-2.87-3.54l-.76-4.24a.88.88,0,0,0-.87-.74H52.16a.88.88,0,0,0-.87.74l-.76,4.24a4.69,4.69,0,0,1-2.87,3.54,25.66,25.66,0,0,0-6.44,3.73,4.71,4.71,0,0,1-4.51.72l-4.07-1.48a.89.89,0,0,0-1.07.4l-5.23,9.07a.92.92,0,0,0,.2,1.15l3.28,2.77a4.72,4.72,0,0,1,1.63,4.27,26.21,26.21,0,0,0-.27,3.79A25.59,25.59,0,0,0,31.44,42l-4.31.61a31.12,31.12,0,0,1-.3-4.34,30.53,30.53,0,0,1,.31-4.41.35.35,0,0,0-.12-.32l-3.28-2.77a5.26,5.26,0,0,1-1.17-6.65l5.23-9.07a5.22,5.22,0,0,1,6.32-2.31l4.07,1.47a.32.32,0,0,0,.34-.05A30.81,30.81,0,0,1,46,9.83a.33.33,0,0,0,.21-.26L47,5.33A5.25,5.25,0,0,1,52.16,1H62.62a5.25,5.25,0,0,1,5.16,4.33l.75,4.24a.33.33,0,0,0,.21.26,30.64,30.64,0,0,1,7.51,4.34.33.33,0,0,0,.33.06l4.13-1.5A5.23,5.23,0,0,1,87,15l5.23,9.08a5.26,5.26,0,0,1-1.16,6.64l-3.34,2.81a.35.35,0,0,0-.12.32,30.39,30.39,0,0,1,.31,4.4,30.83,30.83,0,0,1-.3,4.32.35.35,0,0,0,.12.32l3.3,2.78a5.26,5.26,0,0,1,1.16,6.64L87,61.43l-3.76-2.17,5.22-9.08a.91.91,0,0,0-.2-1.15L85,46.25A4.67,4.67,0,0,1,83.35,42Z"/><path d="M57.42,48a9.68,9.68,0,1,0-9.68-9.67A9.67,9.67,0,0,0,57.42,48Zm14-9.67a14,14,0,1,1-14-14A14,14,0,0,1,71.44,38.29Z"/></svg>
                        </span>
                        <span class="title">Tecnicos</span>
                    </a>
                </li>
    
                <li>
                    <a href="Report.php" data-page="machine">
                        <span class="icon">
                            <svg width="25" height="25" viewBox="0 0 88.23 92.54" fill="currentColor"><path d="M37.42,0h9.09c7.91,0,14.18,0,19.08.66S74.72,2.77,77.94,6a3.22,3.22,0,0,1-4.56,4.56c-1.82-1.82-4.32-2.91-8.65-3.49s-10.25-.6-18.46-.6H37.66c-8.21,0-14,0-18.46.6s-6.83,1.67-8.65,3.49S7.64,14.87,7.06,19.2s-.6,10.25-.6,18.46V54.88c0,8.2,0,14,.6,18.46S8.73,80.16,10.55,82s4.32,2.91,8.65,3.49,10.25.6,18.46.6h8.61c8.21,0,14,0,18.46-.6s6.83-1.67,8.65-3.49c3-3,3.9-7.65,4.06-18.55a3.23,3.23,0,1,1,6.45.09c-.15,10.45-.83,17.9-6,23-3.22,3.22-7.3,4.65-12.35,5.33s-11.17.66-19.08.66H37.42c-7.91,0-14.18,0-19.08-.66C13.29,91.2,9.21,89.77,6,86.55S1.34,79.24.66,74.2,0,63,0,55.12V37.42c0-7.91,0-14.18.66-19.08C1.34,13.29,2.77,9.21,6,6S13.29,1.34,18.34.66C23.24,0,29.51,0,37.42,0ZM68.28,24.94A11.69,11.69,0,0,1,84.81,41.48L64.34,62a29.66,29.66,0,0,1-2.71,2.52,16.73,16.73,0,0,1-3.2,2A31.27,31.27,0,0,1,55,67.75l-9,3a5.51,5.51,0,0,1-7-7L42,55,42,54.8a30,30,0,0,1,1.29-3.47,18.23,18.23,0,0,1,2-3.21,32.9,32.9,0,0,1,2.53-2.71l.13-.13Zm12,4.57a5.24,5.24,0,0,0-7.4,0l-.78.78c0,.15.09.3.15.46A11.18,11.18,0,0,0,79,37.55l.46.15.78-.79A5.22,5.22,0,0,0,80.24,29.51ZM74.53,42.63a17.78,17.78,0,0,1-7.4-7.41L52.51,49.84a29.06,29.06,0,0,0-2.14,2.25,11.57,11.57,0,0,0-1.24,2A27.33,27.33,0,0,0,48.07,57l-1.72,5.17,1.22,1.21,5.17-1.72a26.82,26.82,0,0,0,2.91-1.06,10.66,10.66,0,0,0,2-1.24,26.42,26.42,0,0,0,2.25-2.13Zm-53-9.27a3.23,3.23,0,0,1,3.23-3.23h28a3.23,3.23,0,0,1,0,6.45h-28A3.23,3.23,0,0,1,21.52,33.36Zm0,17.21a3.23,3.23,0,0,1,3.23-3.22H35.51a3.23,3.23,0,1,1,0,6.45H24.75A3.23,3.23,0,0,1,21.52,50.57Zm0,17.22a3.23,3.23,0,0,1,3.23-3.23H31.2a3.23,3.23,0,1,1,0,6.46H24.75A3.23,3.23,0,0,1,21.52,67.79Z"/></svg>
                        </span>
                        <span class="title">Reportes</span>
                    </a>
                </li>
    
                
                <li>
                    <a href="#">
                        <span class="icon">
                            <svg width="25" height="25" viewBox="0 0 92.82 92.82" fill="currentColor"><path d="M33.46,63.68a4.32,4.32,0,1,1-4.32-4.32A4.31,4.31,0,0,1,33.46,63.68Z"/><path d="M50.73,63.68a4.32,4.32,0,1,1-4.32-4.32A4.31,4.31,0,0,1,50.73,63.68Z"/><path d="M63.68,68a4.32,4.32,0,1,0-4.32-4.32A4.31,4.31,0,0,0,63.68,68Z"/><path d="M17.27,29.14v5.63c-1,.07-1.9.16-2.77.27-3.89.52-7.16,1.64-9.76,4.24S1,45.15.5,49A119,119,0,0,0,0,63.44v.48A119.3,119.3,0,0,0,.5,78.33c.53,3.88,1.64,7.15,4.24,9.75s5.87,3.72,9.76,4.24a119.13,119.13,0,0,0,14.41.5h35a119.3,119.3,0,0,0,14.41-.5c3.88-.52,7.15-1.64,9.75-4.24s3.72-5.87,4.24-9.75a119.3,119.3,0,0,0,.5-14.41v-.48a119,119,0,0,0-.5-14.4c-.52-3.89-1.64-7.16-4.24-9.76S82.21,35.56,78.33,35c-.87-.11-1.8-.2-2.78-.27V29.14a29.14,29.14,0,0,0-58.28,0ZM46.41,6.48A22.65,22.65,0,0,0,23.75,29.14v5.41H69.08V29.14A22.66,22.66,0,0,0,46.41,6.48Zm-31,35c-3.17.43-4.84,1.21-6,2.4s-2,2.87-2.4,6a115.84,115.84,0,0,0-.44,13.78,115.84,115.84,0,0,0,.44,13.78c.43,3.17,1.21,4.85,2.4,6s2.87,2,6,2.4a115.48,115.48,0,0,0,13.78.45H63.68a115.39,115.39,0,0,0,13.78-.45c3.17-.42,4.85-1.2,6-2.4s2-2.87,2.4-6a115.39,115.39,0,0,0,.45-13.78A115.39,115.39,0,0,0,85.9,49.9c-.42-3.17-1.2-4.84-2.4-6s-2.87-2-6-2.4A115.84,115.84,0,0,0,63.68,41H29.14A115.93,115.93,0,0,0,15.36,41.46Z"/></svg>
                        </span>
                        <span class="title">Password</span>
                    </a>
                </li>
    
                <li>
                    <a href="index.html">
                        <span class="icon">
                            <svg width="25" height="25" viewBox="0 0 92.82 92.82" fill="currentColor"><path d="M59.12,0a119,119,0,0,0-14.4.5C40.83,1,37.56,2.14,35,4.74a15,15,0,0,0-4,8.33,70.32,70.32,0,0,0-.73,11.74,3.24,3.24,0,0,0,6.48,0,64.83,64.83,0,0,1,.62-10.6,8.69,8.69,0,0,1,2.22-4.92c1.19-1.19,2.87-2,6-2.4a115.84,115.84,0,0,1,13.78-.44h4.32a116,116,0,0,1,13.78.44c3.16.43,4.84,1.21,6,2.4s2,2.87,2.4,6a118,118,0,0,1,.44,13.78V63.68a118,118,0,0,1-.44,13.78c-.43,3.17-1.21,4.84-2.4,6s-2.88,2-6,2.4a116,116,0,0,1-13.78.44H59.36a115.84,115.84,0,0,1-13.78-.44c-3.17-.43-4.85-1.21-6-2.4a8.69,8.69,0,0,1-2.22-4.92A64.83,64.83,0,0,1,36.7,68a3.24,3.24,0,0,0-6.48,0A70.32,70.32,0,0,0,31,79.75a15,15,0,0,0,4,8.33c2.6,2.6,5.87,3.71,9.76,4.24a119,119,0,0,0,14.4.5h4.79a119.13,119.13,0,0,0,14.41-.5c3.88-.53,7.16-1.64,9.76-4.24s3.71-5.87,4.23-9.76a116.72,116.72,0,0,0,.51-14.4v-35a116.72,116.72,0,0,0-.51-14.4c-.52-3.89-1.64-7.16-4.23-9.76S82.2,1,78.32.5A119.13,119.13,0,0,0,63.91,0Z"/><path d="M3.24,43.17a3.24,3.24,0,1,0,0,6.47H54.93L46.46,56.9a3.24,3.24,0,0,0,4.22,4.92l15.11-13a3.23,3.23,0,0,0,0-4.91L50.68,31a3.24,3.24,0,1,0-4.22,4.91l8.47,7.26Z"/></svg>
                        </span>
                        <span class="title">Cerrar Sesión</span>
                    </a>
                </li>
            </ul>
        </div>
    
            <!-- ========================= Main ==================== -->
            <div class="main">
                <div class="topbar">
                    <div class="toggle">
                        <ion-icon name="menu-outline"></ion-icon>
                    </div>
    
                    <div class="search">
                        <label>
                            <input type="text" placeholder="Search here">
                            <svg width="15" height="15" viewBox="0 0 94.19 94.19" fill="currentColor"><path d="M44.91,6.57A38.34,38.34,0,1,0,83.24,44.91,38.33,38.33,0,0,0,44.91,6.57ZM0,44.91A44.91,44.91,0,1,1,78.9,74.25L93.23,88.58a3.29,3.29,0,0,1-4.65,4.65L74.25,78.9A44.91,44.91,0,0,1,0,44.91Z"/></svg>
                        </label>
                    </div>               
                    <div class="user">
                        <img src="assets/imgs/robot.png" alt="">
                    </div>
                </div>
                
 <!-- ======================= Cards ================== -->
        <div class="cardBox">
            <a href="Alertas.php">
                <div class="card">
                <div>
                <div class="numbers" id="alertas-count">0</div>
                <div class="cardName">Alertas</div>
            </div>

         <div class="iconBx">
            <svg width="50" height="50" viewBox="0 0 113.45 92.34" fill="currentColor">>
         </div>
       </div>
     </a>

     <a href="Clientes.php">
       <div class="card">
         <div>
                <div class="numbers" id="clientes-count">0</div>
                <div class="cardName">Clientes</div>
            </div>

         <div class="iconBx">
            <svg width="50" height="50" viewBox="0 0 97.58 92.82" fill="currentColor"><>
         </div>
       </div>
     </a>

     <a href="Ordenes.php">
       <div class="card">
         <div>
                <div class="numbers" id="ordenes-count">0</div>
                <div class="cardName">Órdenes de Trabajo</div>
            </div>
         <div class="iconBx">
            <svg width="50" height="50" viewBox="0 0 92.82 92.82" fill="currentColor"><>
         </div>
       </div>
     </a>

     <a href="Machine.php">
       <div class="card">
         <div>
                <div class="numbers" id="maquinas-count">0</div>
                <div class="cardName">Máquinas</div>
            </div>

         <div class="iconBx">
            <svg width="50" height="50" viewBox="0 0 122.89 88.59" fill="currentColor">>
         </div>
       </div>
     </a>
   </div>

           
            <!-- ================ Order Details List ================= -->
<section class="details">
    <div class="recentOrders">
        <div class="cardHeader">
            <h2>Ordenes de Trabajo</h2>
            <div class="button-container">
                <button class="create-Orden-btn">Crear Ordén</button>
            </div>
            <input type="text" id="searchInputorden" placeholder="Search orders...">
        </div>

        <table id="tablaOrdenes">
            <thead>
                <tr>
                    <th>Cliente</th>
                    <th>Equipo</th>
                    <th>Objetivo</th>
                    <th>Tipo de Trabajo</th>
                    <th>Fecha Inicio</th>
                    <th>Fecha Culminación</th>
                    <th>Serial de Motor</th>
                    <th>Serial de Carroseria</th>
                    <th>Descripción General</th>
                    <th>Observacion General</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                
            </tbody>
        </table>
    </div>
</section>
        </main>
    </div>
   <!-- Formularios emergentes de creación de órdenes -->
<!-- Popup A: Selección de Cliente y Máquina -->
<div id="createOrdenPopupA" class="popup">
    <div class="popup-content">
        <h2>Selección de Cliente y Máquina</h2>
        <form id="createOrdenFormA">
            <label for="cliente">Cliente:</label>
            <select id="cliente" name="cliente_id" required>
                <option value="">Seleccionar Cliente</option>
                <!-- Opciones cargadas dinámicamente -->
            </select>
            <label for="maquina">Máquina:</label>
            <select id="maquina" name="maquina_id" required>
                <option value="">Seleccionar Máquina</option>
                <!-- Opciones cargadas dinámicamente -->
            </select>
            <button type="button" onclick="showNextPopup('createOrdenPopupA', 'createOrdenPopupB')">Siguiente</button>
        </form>
    </div>
</div>

<!-- Popup B: Descripción General -->
<div id="createOrdenPopupB" class="popup">
    <div class="popup-content">
        <h2>Descripción General</h2>
        <form id="createOrdenFormB">
            <label for="objetivo">Objetivo:</label>
            <textarea id="objetivo" name="objetivo" required></textarea>
            <label for="tipo_trabajo">Tipo de Trabajo:</label>
            <input type="text" id="tipo_trabajo" name="tipo_trabajo" required>
            <label for="fecha_inicio">Fecha de Inicio:</label>
            <input type="date" id="fecha_inicio" name="fecha_inicio" required>
            <label for="fecha_culminacion">Fecha de Culminación:</label>
            <input type="date" id="fecha_culminacion" name="fecha_culminacion" required>
            <label for="duracion">Duración:</label>
            <input type="text" id="duracion" name="duracion">
            <label for="periodo">Periodo:</label>
            <input type="text" id="periodo" name="periodo">
            <button type="button" onclick="showNextPopup('createOrdenPopupB', 'createOrdenPopupC')">Siguiente</button>
        </form>
    </div>
</div>

<!-- Popup C: Identificación de Responsables -->
<div id="createOrdenPopupC" class="popup">
    <div class="popup-content">
        <h2>Identificación de Responsables</h2>
        <form id="createOrdenFormC">
            <label for="solicita">Solicita:</label>
            <input type="text" id="solicita" name="solicita" required>
            <label for="autoriza">Autoriza:</label>
            <input type="text" id="autoriza" name="autoriza" required>
            <label for="ejecuta">Ejecuta:</label>
            <input type="text" id="ejecuta" name="ejecuta" required>
            <label for="supervisa">Supervisa:</label>
            <input type="text" id="supervisa" name="supervisa" required>
            <button type="button" onclick="showNextPopup('createOrdenPopupC', 'createOrdenPopupD')">Siguiente</button>
        </form>
    </div>
</div>

<!-- Popup D: Tareas a Ejecutar -->
<div id="createOrdenPopupD" class="popup">
    <div class="popup-content">
        <h2>Tareas a Ejecutar</h2>
        <form id="createOrdenFormD">
            <label for="descripcion_tarea">Descripción de la Tarea:</label>
            <textarea id="descripcion_tarea" name="descripcion_tarea" required></textarea>
            <label for="tiempo_estimado">Tiempo Estimado:</label>
            <input type="number" id="tiempo_estimado" name="tiempo_estimado">
            <label for="tiempo_real">Tiempo Real:</label>
            <input type="number" id="tiempo_real" name="tiempo_real">
            <button type="button" onclick="showNextPopup('createOrdenPopupD', 'createOrdenPopupE')">Siguiente</button>
        </form>
    </div>
</div>

<!-- Popup E: Repuestos a Utilizar -->
<div id="createOrdenPopupE" class="popup">
    <div class="popup-content">
        <h2>Repuestos a Utilizar</h2>
        <form id="createOrdenFormE">
            <label for="codigo_repuesto">Código de Repuesto:</label>
            <input type="text" id="codigo_repuesto" name="codigo_repuesto">
            <label for="descripcion_repuesto">Descripción:</label>
            <textarea id="descripcion_repuesto" name="descripcion_repuesto"></textarea>
            <label for="cantidad_planificada">Cantidad Planificada:</label>
            <input type="number" id="cantidad_planificada" name="cantidad_planificada">
            <label for="cantidad_utilizada">Cantidad Utilizada:</label>
            <input type="number" id="cantidad_utilizada" name="cantidad_utilizada">
            <button type="button" onclick="showNextPopup('createOrdenPopupE', 'createOrdenPopupF')">Siguiente</button>
        </form>
    </div>
</div>

<!-- Popup F: Personal Requerido -->
<div id="createOrdenPopupF" class="popup">
    <div class="popup-content">
        <h2>Personal Requerido</h2>
        <form id="createOrdenFormF">
            <label for="categoria">Categoría:</label>
            <input type="text" id="categoria" name="categoria">
            <label for="nombre_personal">Nombre y Apellido:</label>
            <input type="text" id="nombre_personal" name="nombre_personal">
            <label for="horas_requeridas">Horas Requeridas:</label>
            <input type="number" id="horas_requeridas" name="horas_requeridas">
            <label for="horas_normales">Horas Normales:</label>
            <input type="number" id="horas_normales" name="horas_normales">
            <label for="horas_extras">Horas Extras:</label>
            <input type="number" id="horas_extras" name="horas_extras">
            <button type="button" onclick="showNextPopup('createOrdenPopupF', 'createOrdenPopupG')">Siguiente</button>
        </form>
    </div>
</div>

<!-- Popup G: Equipos de Protección Personal -->
<div id="createOrdenPopupG" class="popup">
    <div class="popup-content">
        <h2>Equipos de Protección Personal</h2>
        <form id="createOrdenFormG">
            <label for="codigo_epp">Código de EPP:</label>
            <input type="text" id="codigo_epp" name="codigo_epp">
            <label for="descripcion_epp">Descripción:</label>
            <textarea id="descripcion_epp" name="descripcion_epp"></textarea>
            <label for="cantidad_planificada_epp">Cantidad Planificada:</label>
            <input type="number" id="cantidad_planificada_epp" name="cantidad_planificada_epp">
            <label for="cantidad_utilizada_epp">Cantidad Utilizada:</label>
            <input type="number" id="cantidad_utilizada_epp" name="cantidad_utilizada_epp">
            <button type="button" onclick="showNextPopup('createOrdenPopupG', 'createOrdenPopupH')">Siguiente</button>
        </form>
    </div>
</div>

<!-- Popup H: Observaciones Generales -->
<div id="createOrdenPopupH" class="popup">
    <div class="popup-content">
        <h2>Observaciones Generales</h2>
        <form id="createOrdenFormH">
            <label for="observacion_general">Observaciones Generales:</label>
            <textarea id="observacion_general" name="observacion_general"></textarea>
            <button type="button" onclick="submitFormData()">Enviar</button>
        </form>
    </div>
</div>

<!--NUevo-->
<!-- Popup de detalles de la orden -->
<div id="orderDetailsPopup" class="popup">
    <div class="popup-content">
        <h2>Detalles de la Orden</h2>
        <form id="orderDetailsForm">
            <input type="hidden" name="id">
            <label for="cliente_id">Cliente:</label>
            <input type="text" name="cliente_id" readonly>
            <label for="equipo">Equipo:</label>
            <input type="text" name="equipo" readonly>
            <label for="tipo_uso">Tipo de Uso:</label>
            <input type="text" name="tipo_uso">
            <label for="objetivo">Objetivo:</label>
            <input type="text" name="objetivo">
            <label for="tipo_trabajo">Tipo de Trabajo:</label>
            <input type="text" name="tipo_trabajo">
            <label for="fecha_inicio">Fecha Inicio:</label>
            <input type="date" name="fecha_inicio">
            <label for="fecha_culminacion">Fecha Culminación:</label>
            <input type="date" name="fecha_culminacion">
            <label for="descripcion_general">Descripción General:</label>
            <textarea name="descripcion_general"></textarea>
            <label for="observacion_general">Observación General:</label>
            <textarea name="observacion_general"></textarea>
            <button type="submit">Guardar Cambios</button>
        </form>
    </div>
</div>

       
    <!-- =========== Scripts =========  -->
    <script src='assets/js/orders.js'></script>
    <script src='assets/js/orderoptions.js'></script>
    <script src='assets/js/index.js'></script>

    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>
