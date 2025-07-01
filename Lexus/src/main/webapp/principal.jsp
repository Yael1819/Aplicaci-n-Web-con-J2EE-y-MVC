<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.unsij.beans.Usuario" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sistema de Asistencia Mecánica</title>
    
    <!-- Enlace correcto al CSS con ruta dinámica -->
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
                <h1>SISTEMA DE ASISTENCIA MECÁNICA</h1>
                <p class="subtitle">Gestión de vehículos, problemas y soluciones</p>
            </div>
        </div>

        <div id="nav-placeholder"></div>
    </header>

    <main>
        <div class="background-image">
            <div class="content-box">
                <h1>BIENVENIDO  👋</h1>
                <p class="slogan">Gestión integral de problemas vehiculares y soluciones mecánicas</p>

                <!-- Estadísticas rápidas -->
                <div class="stats-container">
                    <div class="stat-card">
                        <h3>Vehículos registrados</h3>
                        <p id="total-vehiculos">0</p>
                    </div>
                    <div class="stat-card">
                        <h3>Problemas resueltos</h3>
                        <p id="problemas-resueltos">0</p>
                    </div>
                    <div class="stat-card">
                        <h3>Soluciones disponibles</h3>
                        <p id="soluciones-disponibles">0</p>
                    </div>
                </div>

                <!-- Sección de botones de navegación -->
                <div class="form-group">
                    <a href="${pageContext.request.contextPath}/perfil.jsp"><button>Mi Perfil</button></a>
                    <a href="${pageContext.request.contextPath}/marca.jsp"><button>Ver Vehículos</button></a>
                    <a href="${pageContext.request.contextPath}/registrarProblema.jsp"><button>Registrar Problema</button></a>
                    <a href="${pageContext.request.contextPath}/soluciones.jsp"><button>Buscar Soluciones</button></a>
                    <a href="${pageContext.request.contextPath}/iniciarsesion.jsp"><button>Cerrar Sesión</button></a>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <p>Sistema de Asistencia Mecánica &copy; 2025 - Base de datos de vehículos y soluciones</p>
    </footer>

    <script>
        // Simulación de estadísticas
        document.addEventListener('DOMContentLoaded', function() {
            document.getElementById('total-vehiculos').textContent = '124';
            document.getElementById('problemas-resueltos').textContent = '356';
            document.getElementById('soluciones-disponibles').textContent = '189';
        });
    </script>
</body>
</html>
