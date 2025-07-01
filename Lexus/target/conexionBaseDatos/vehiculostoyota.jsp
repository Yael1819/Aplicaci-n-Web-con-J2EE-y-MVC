<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Vehículos Toyota</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/principal/principal.css" />
    <style>
        /* ESTILOS EXCLUSIVOS PARA TARJETAS (no afectan al header) */
        .contenedor-autos {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 1.5rem;
            padding: 1.5rem;
            background-color: #f8f9fa; /* Fondo gris claro para contraste */
        }

        .tarjeta-auto {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
            transition: all 0.3s ease;
            border: none;
        }

        .tarjeta-auto:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.12);
        }

        .imagen-auto {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-bottom: 1px solid #eee;
        }

        .info-auto {
            padding: 1.2rem;
        }

        .info-auto p {
            margin: 0.4rem 0;
            font-size: 0.9rem;
            color: #555;
            line-height: 1.4;
        }

        .info-auto p strong {
            color: #333;
            font-weight: 600;
        }

        .modelo-tarjeta {
            font-size: 1.2rem;
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 0.8rem;
            display: block;
        }
    </style>
</head>
<body>

    <c:if test="${empty listaVehiculos}">
        <c:redirect url="/vehiculostoyota" />
    </c:if>

    <header>
        <div class="header-left">
            <div class="logo-left">
                <img src="${pageContext.request.contextPath}/images/logo.png" class="logo-image" alt="Logo Asistencia Mecánica" />
            </div>
            <div class="title">
                <h1>MIS VEHÍCULOS</h1>
                <p class="subtitle">Información personal del vehículo registrado</p>
            </div>
        </div>
        <div id="nav-placeholder"></div>
    </header>

    <main>
        <h1>Vehículos Toyota Registrados</h1>
        <div class="contenedor-autos">
            <c:forEach var="vehiculo" items="${listaVehiculos}">
                <div class="tarjeta-auto">
                    <img src="${pageContext.request.contextPath}/${vehiculo.imagenUrl}" 
                         alt="${vehiculo.modelo}" class="imagen-auto" />
                    <div class="info-auto">
                        <span class="modelo-tarjeta">${vehiculo.modelo}</span>
                        <p><strong>ID:</strong> ${vehiculo.idVehiculo}</p>
                        <p><strong>Motor:</strong> ${vehiculo.motor}</p>
                        <p><strong>Combustible:</strong> ${vehiculo.combustible}</p>
                        <p><strong>Consumo:</strong> ${vehiculo.consumo} L/100 km</p>
                        <p><strong>Año:</strong> ${vehiculo.año}</p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </main>

    <footer>
        <p>© 2025 Agencia Vehicular | Todos los derechos reservados</p>
    </footer>
</body>
</html>
