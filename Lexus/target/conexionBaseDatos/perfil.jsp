<%-- 
    Document   : principal.jsp
    Created on : 16/06/2025, 12:14:34 PM
    Author     : elton
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Perfil de Usuario</title>
    
    <!-- Estilos CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/principal/principal.css" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <div class="header-left">
            <div class="logo-left">
                <img src="${pageContext.request.contextPath}/images/logo.png" class="logo-image" alt="Logo Asistencia Mecánica" />
            </div>
            <div class="title">
                <h1>MI PERFIL</h1>
                <p class="subtitle">Información personal y del vehículo asociado</p>
            </div>
        </div>
        <div id="nav-placeholder"></div>
    </header>

    <main>
        <div class="background-image">
            <div class="content-box">
                <h2>Datos del Usuario</h2>
                <div class="profile-info">
                    <p><strong>Nombre:</strong> <span id="nombre">Cargando...</span></p>
                    <p><strong>Email:</strong> <span id="email">Cargando...</span></p>
                    <p><strong>ID de Usuario:</strong> <span id="id_usuario">Cargando...</span></p>
                    <p><strong>ID de Vehículo Asociado:</strong> <span id="id_vehiculo">Cargando...</span></p>
                </div>

                <div class="form-group">
                    <a href="${pageContext.request.contextPath}/editar-perfil.html"><button>Editar Perfil</button></a>
                    <a href="${pageContext.request.contextPath}/vehiculosusuario.jsp"><button>Mis Vehículos</button></a>
                    <a href="${pageContext.request.contextPath}/iniciarsesion.jsp"><button>Cerrar Sesión</button></a>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <p>Sistema de Asistencia Mecánica &copy; 2025 - Perfil de Usuario</p>
    </footer>

    <!-- Simulación de datos -->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const usuario = {
                id_usuario: 101,
                nombre: "Elton Yael Hernández Pérez",
                email: "elton.yael@example.com",
                id_vehiculo: 204
            };

            document.getElementById('id_usuario').textContent = usuario.id_usuario;
            document.getElementById('nombre').textContent = usuario.nombre;
            document.getElementById('email').textContent = usuario.email;
            document.getElementById('id_vehiculo').textContent = usuario.id_vehiculo ?? "No asignado";
        });
    </script>
</body>
</html>
>