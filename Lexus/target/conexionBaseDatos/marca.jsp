<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Vehículos Registrados</title>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet" />

  <style>
    body {
      font-family: 'Roboto', sans-serif;
      margin: 0;
      padding: 0;
      background: linear-gradient(to bottom, #333, #111); /* Fondo degradado oscuro */
      color: white;
    }

    header {
      background-color: #111;
      color: white;
      padding: 10px 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .header-left {
      display: flex;
      align-items: center;
    }

    .logo-left img.logo-image {
      height: 60px;
      margin-right: 15px;
    }

    .title h1 {
      margin: 0;
      font-size: 24px;
      text-transform: uppercase;
    }

    .subtitle {
      margin: 0;
      font-size: 14px;
    }

    .background-image {
      padding: 30px;
    }

    .content-box {
      background-color: transparent; /* Fondo transparente */
      border-radius: 10px;
      padding: 20px;
      max-width: 1000px;
      margin: auto;
    }

    h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #fff;
    }

    .grid-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 20px;
    }

    .tarjeta {
      background-color: white;
      border-radius: 12px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 150px;
      text-align: center;
      padding: 20px;
      text-decoration: none;
      color: black;
      transition: transform 0.2s, box-shadow 0.2s;
    }

    .tarjeta:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .marca-img {
      max-width: 80px;
      height: auto;
      margin-bottom: 10px;
    }

    .tarjeta div {
      font-weight: bold;
      font-size: 16px;
      color: blue;
      text-decoration: underline;
    }

    .form-group {
      text-align: center;
      margin-top: 30px;
    }

    .form-group button {
      background-color: #004080;
      color: white;
      border: none;
      padding: 10px 20px;
      font-size: 14px;
      border-radius: 5px;
      cursor: pointer;
    }

    .form-group button:hover {
      background-color: #003366;
    }

    footer {
      background-color: #222;
      color: #fff;
      text-align: center;
      padding: 15px;
      margin-top: 40px;
    }
  </style>
</head>
<body>
  <header>
    <div class="header-left">
      <div class="logo-left">
        <img src="${pageContext.request.contextPath}/images/logo.png" class="logo-image" alt="Logo Asistencia Mecánica" />
      </div>
      <div class="title">
        <h1>MARCAS</h1>
        <p class="subtitle">Marcas más conocidas registradas</p>
      </div>
    </div>
    <div id="nav-placeholder"></div>
  </header>

  <main>
    <div class="background-image">
      <div class="content-box">
        <h2>Vehículos Registrados</h2>
        <div id="vehiculos-container" class="grid-container scroll-tarjetas">
          <a href="${pageContext.request.contextPath}/vehiculostoyota.jsp" class="tarjeta">
            <img src="${pageContext.request.contextPath}/images/toyota.png" alt="Toyota" class="marca-img" />
            <div>Toyota</div>
          </a>

          <a href="${pageContext.request.contextPath}/vehiculosnissan.jsp" class="tarjeta">
            <img src="${pageContext.request.contextPath}/images/nissan.png" alt="Nissan" class="marca-img" />
            <div>Nissan</div>
          </a>

          <a href="${pageContext.request.contextPath}/vehiculoschevrolet.jsp" class="tarjeta">
            <img src="${pageContext.request.contextPath}/images/Chevrolet.png" alt="Chevrolet" class="marca-img" />
            <div>Chevrolet</div>
          </a>

          <a href="${pageContext.request.contextPath}/vehiculosford.jsp" class="tarjeta">
            <img src="${pageContext.request.contextPath}/images/Ford.png" alt="Ford" class="marca-img" />
            <div>Ford</div>
          </a>

          <a href="${pageContext.request.contextPath}/vehiculoshonda.jsp" class="tarjeta">
            <img src="${pageContext.request.contextPath}/images/honda.png" alt="Honda" class="marca-img" />
            <div>Honda</div>
          </a>
        </div>

        <div class="form-group">
          <a href="${pageContext.request.contextPath}/principal.jsp"><button>Regresar</button></a>
        </div>
      </div>
    </div>
  </main>

  <footer>
    <p>Sistema de Asistencia Mecánica &copy; 2025 - Perfil de Usuario</p>
  </footer>
</body>
</html>
