package com.unsij.controllers;

import com.unsij.beans.Usuario;
import com.unsij.services.UsuarioService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
@WebServlet("/login")
public class LoginController extends HttpServlet {

    private UsuarioService usuarioService;

    @Override
    public void init() throws ServletException {
        super.init();
        usuarioService = new UsuarioService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        // Configurar encoding para manejar caracteres especiales
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String nombre = request.getParameter("nombre");
        String password = request.getParameter("password");

        // Debug: imprimir los parámetros recibidos
        System.out.println("Debug - Parámetros recibidos:");
        System.out.println("nombre: [" + nombre + "]");
        System.out.println("password: [" + password + "]");
        System.out.println("Content-Type: " + request.getContentType());
        System.out.println("Character Encoding: " + request.getCharacterEncoding());
        
        // Validación básica de parámetros
        if (nombre == null || nombre.trim().isEmpty() || 
            password == null || password.trim().isEmpty()) {
            System.out.println("Debug - Parámetros vacíos o nulos");
            request.setAttribute("error", "Usuario y contraseña son requeridos");
            request.getRequestDispatcher("/iniciarsesion.jsp").forward(request, response);
            return;
        }

        try {
            // Usar el servicio para validar usuario
            Usuario usuario = usuarioService.validarUsuario(nombre.trim(), password);

            if (usuario != null) {
                System.out.println("Debug - Login exitoso para usuario: " + usuario.getNombre());
                // Login exitoso - crear sesión
                HttpSession session = request.getSession(true);
                session.setAttribute("usuario", usuario);
                response.sendRedirect(request.getContextPath() + "/principal.jsp");
            } else {
                System.out.println("Debug - Credenciales incorrectas");
                // Credenciales incorrectas
                request.setAttribute("error", "Usuario o contraseña incorrectos");
                request.getRequestDispatcher("/iniciarsesion.jsp").forward(request, response);
            }

        } catch (Exception e) {
            // Log del error para debugging
            System.err.println("Error en LoginController: " + e.getMessage());
            e.printStackTrace();
            request.setAttribute("error", "Error interno del servidor. Intente más tarde.");
            request.getRequestDispatcher("/iniciarsesion.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        // Redirigir a la página de login si acceden por GET
        request.getRequestDispatcher("/iniciarsesion.jsp").forward(request, response);
    }
}