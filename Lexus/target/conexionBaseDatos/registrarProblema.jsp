<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Registrar Problema</title>
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
                <p class="subtitle">Registrar nuevo problema vehicular</p>
            </div>
        </div>
    </header>

    <main>
        <div class="content-box">
            <h2 style="margin-bottom: 30px;">Registrar Nuevo Problema</h2>
            <form action="RegistrarProblemaServlet" method="post" style="display: flex; flex-direction: column; gap: 15px; align-items: stretch;">

                <div>
                    <label for="nombre">Nombre del problema:</label>
                    <input type="text" id="nombre" name="nombre" required />
                </div>

                <div>
                    <label for="descripcion">Descripción del problema:</label>
                    <textarea id="descripcion" name="descripcion" maxlength="300" rows="4"></textarea>
                </div>

                <div>
                    <label for="id_vehiculo">ID del vehículo:</label>
                    <input type="number" id="id_vehiculo" name="id_vehiculo" required />
                </div>

                <div>
                    <label for="id_categoria">Categoría del problema:</label>
                    <select id="id_categoria" name="id_categoria" required>
                        <option value="">Seleccione una categoría</option>
                        <%
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/appVehiculos", "root", "TU_CONTRASEÑA");
                                Statement stmt = conn.createStatement();
                                ResultSet rs = stmt.executeQuery("SELECT id_categoria, nombre_categoria FROM Categorias");

                                while(rs.next()) {
                                    int id = rs.getInt("id_categoria");
                                    String nombre = rs.getString("nombre_categoria");
                        %>
                                    <option value="<%= id %>"><%= nombre %></option>
                        <%
                                }

                                rs.close();
                                stmt.close();
                                conn.close();
                            } catch(Exception e) {
                                out.println("<option>Error al cargar categorías</option>");
                                e.printStackTrace(); // Te muestra el error en la consola
                            }
                        %>
                    </select>
                </div>

                <div class="form-group" style="margin-top: 20px; gap: 10px;">
                    <button type="submit">Registrar Problema</button>
                    <a href="${pageContext.request.contextPath}/principal.jsp">
                        <button type="button" style="background-color: #888;">Cancelar</button>
                    </a>
                </div>
            </form>
        </div>
    </main>

    <footer>
        <p>&copy; 2025 Sistema de Asistencia Mecánica</p>
    </footer>
</body>
</html>
