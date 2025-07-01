<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Perfil de Usuario</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/principal/principal.css" /> 
</head>
<body>
    <header>
        <div class="header-left">
            <div class="logo-left">
                <img src="${pageContext.request.contextPath}/images/logo.png" class="logo-image" alt="Logo Asistencia Mecánica" />
            </div>
            <div class="title">
                <h1>MIS VEHICULOS</h1>
                <p class="subtitle">Información personal del vehículo registrado</p>
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
                </div>

                <h2>Vehículo Registrado</h2>
                <div class="profile-info">
                    <p><strong>ID Vehículo:</strong> <span id="id_vehiculo">Cargando...</span></p>
                    <p><strong>Marca:</strong> <span id="marca">Cargando...</span></p>
                    <p><strong>Modelo:</strong> <span id="modelo">Cargando...</span></p>
                    <p><strong>Año:</strong> <span id="anio">Cargando...</span></p>
                    <p><strong>Imagen del Vehículo:</strong></p>
                    <img id="imagen_vehiculo" src="${pageContext.request.contextPath}/images/toyoyta.png" alt="Imagen del Vehículo" class="vehicle-image" />
                    <%-- 
                    <form id="formImagen" enctype="multipart/form-data" method="POST" action="${pageContext.request.contextPath}/subir-imagen.php">
                        <input type="file" name="imagen" accept="image/*" required />
                        <input type="hidden" name="id_vehiculo" value="204" />
                        <button type="submit">Subir Imagen</button>
                    </form>
                    --%>
                </div>

                <div class="form-group">
                    <a href="${pageContext.request.contextPath}/editar-perfil.jsp"><button>Añadir Vehículo</button></a>
                    <a href="${pageContext.request.contextPath}/vehiculos.jsp"><button>Eliminar Vehículo</button></a>
                    <a href="${pageContext.request.contextPath}/principal.jsp"><button>Regresar</button></a>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <p>Sistema de Asistencia Mecánica &copy; 2025 - Perfil de Usuario</p>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const usuario = {
                id_usuario: 101,
                nombre: "Elton Yael Hernández Pérez",
                email: "elton.yael@example.com",
                vehiculo: {
                    id_vehiculo: 204,
                    marca: "Toyota",
                    modelo: "Corolla",
                    anio: 2020,
                    imagen: "" // ruta personalizada
                }
            };

            document.getElementById('id_usuario').textContent = usuario.id_usuario;
            document.getElementById('nombre').textContent = usuario.nombre;
            document.getElementById('email').textContent = usuario.email;

            if (usuario.vehiculo) {
                document.getElementById('id_vehiculo').textContent = usuario.vehiculo.id_vehiculo;
                document.getElementById('marca').textContent = usuario.vehiculo.marca;
                document.getElementById('modelo').textContent = usuario.vehiculo.modelo;
                document.getElementById('anio').textContent = usuario.vehiculo.anio;
                document.getElementById('imagen_vehiculo').src = usuario.vehiculo.imagen || '${pageContext.request.contextPath}/images/vehiculo_default.jpg';
            }
        });
    </script>
</body>
</html>
