<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Soluciones para Vehículos</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/principal/principal.css" />
</head>
<body>
    <header>
        <div class="header-left">
            <div class="logo-left">
                <img src="${pageContext.request.contextPath}/images/logo.png" class="logo-image" alt="Logo Asistencia Mecánica" />
            </div>
            <div class="title">
                <h1>SOLUCIONES DISPONIBLES</h1>
                <p class="subtitle">Soluciones para problemas de tu vehículo</p>
            </div>
        </div>
        <div id="nav-placeholder"></div>
    </header>

    <main>
        <div class="background-image">
            <div class="content-box">
                <h2>Soluciones para tu vehículo</h2>
                
                <div id="vehicle-info">
                    <p><strong>Vehículo:</strong> <span id="vehicle-model">Cargando...</span></p>
                    <p><strong>Problema reportado:</strong> <span id="problem-name">Cargando...</span></p>
                </div>

                <div id="solutions-container">
                    <!-- Las soluciones se cargarán aquí dinámicamente -->
                </div>

                <div class="form-group">
                    <a href="${pageContext.request.contextPath}/principal.jsp"><button>Regresar</button></a>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <p>Sistema de Asistencia Mecánica &copy; 2025 - Soluciones</p>
    </footer>

    <script>
        // Simulación de datos (deberías reemplazar esto con una llamada a la API)
        document.addEventListener('DOMContentLoaded', function() {
            const vehiculo = {
                id_vehiculo: 204,
                modelo: "Sentra 2020",
                marca: "Nissan",
                año: 2020,
                id_problema: 15
            };

            const problema = {
                id_problema: 15,
                nombre: "Fallo en el encendido del motor",
                id_categoria: 3
            };

            const soluciones = [
                {
                    id_solucion: 1,
                    nombre: "Cambio de bujías",
                    id_problema: 15,
                    herramientas: [
                        { id_herramienta: 1, nombre: "Llave para bujías", id_uso: 3 },
                        { id_herramienta: 2, nombre: "Aire comprimido", id_uso: 1 },
                        { id_herramienta: 3, nombre: "Nuevas bujías", id_uso: 3 }
                    ]
                },
                {
                    id_solucion: 2,
                    nombre: "Revisión de cables de bujías",
                    id_problema: 15,
                    herramientas: [
                        { id_herramienta: 4, nombre: "Multímetro", id_uso: 2 },
                        { id_herramienta: 5, nombre: "Guantes de protección", id_uso: 1 }
                    ]
                }
            ];

            // Mostrar datos del vehículo y problema
            document.getElementById('vehicle-model').textContent = `${vehiculo.marca} ${vehiculo.modelo} (${vehiculo.año})`;
            document.getElementById('problem-name').textContent = problema.nombre;

            // Cargar dinámicamente las soluciones
            const container = document.getElementById('solutions-container');
            container.innerHTML = '';

            soluciones.forEach(solution => {
                const solutionCard = document.createElement('div');
                solutionCard.className = 'solution-card';
                
                solutionCard.innerHTML = `
                    <div class="solution-header">
                        <h3>${solution.nombre}</h3>
                    </div>
                    <p>Descripción detallada de la solución ${solution.nombre} para el problema "${problema.nombre}".</p>
                    <div class="tools-list">
                        <h4>Herramientas necesarias:</h4>
                        <ul>
                                                    </ul>
                    </div>
                `;
                
                container.appendChild(solutionCard);
            });
        });
    </script>
</body>
</html>

