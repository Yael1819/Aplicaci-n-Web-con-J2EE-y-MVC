<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Inicio de Sesión</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/inicio/inicio.css" />
</head>
<body>
    <div class="login-container">
        <h1>Iniciar Sesión</h1>
        
        <!-- Mostrar mensaje de error si lo hay -->
        <% if (request.getAttribute("error") != null) { %>
            <p style="color: red; text-align: center; margin-bottom: 15px;">
                <%= request.getAttribute("error") %>
            </p>
        <% } %>
        
        <form action="login" method="POST">
            <div class="form-group">
                <label for="nombre">Usuario:</label>
                <input type="text" id="nombre" name="nombre" required />
            </div>
            <div class="form-group">
                <label for="contraseña">Contraseña:</label>
                <input type="password" id="contraseña" name="password" required />
            </div>
            <button type="submit">Ingresar</button>
        </form>
    </div>
</body>
</html>