package com.unsij.services;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.unsij.beans.Usuario;
import com.unsij.dao.UsuarioDAO;

public class UsuarioService {

    private UsuarioDAO usuarioDAO;

    public UsuarioService() {
        this.usuarioDAO = new UsuarioDAO();
    }

    /**
     * Valida el usuario usando el DAO.
     * Aquí podrías agregar lógica adicional (validaciones, reglas, etc.).
     */
    public Usuario validarUsuario(String nombre, String contraseña) {
        // Por ahora delegamos directamente al DAO
        return usuarioDAO.validarUsuario(nombre, contraseña);
    }
    
    
}
