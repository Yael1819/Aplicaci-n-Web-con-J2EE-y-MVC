package com.unsij.dao;

import com.unsij.beans.Usuario;
import com.unsij.utils.DBConnection;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class UsuarioDAO {

    /**
     * Método para validar usuario y contraseña.
     * Retorna el objeto Usuario si es válido, sino null.
     */
    public Usuario validarUsuario(String nombre, String contraseña) {
        Usuario usuario = null;
        String sql = "SELECT * FROM Usuarios WHERE nombre = ? AND contraseña = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, nombre);
            stmt.setString(2, contraseña);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    usuario = new Usuario();
                    usuario.setIdUsuario(rs.getInt("id_usuario"));
                    usuario.setNombre(rs.getString("nombre"));
                    usuario.setContraseña(rs.getString("contraseña"));
                    usuario.setEmail(rs.getString("email"));
                    
                    // Manejo correcto de valores NULL para id_vehiculo
                    int idVehiculo = rs.getInt("id_vehiculo");
                    if (!rs.wasNull()) {
                        usuario.setIdVehiculo(idVehiculo);
                    } else {
                        usuario.setIdVehiculo(null);
                    }
                }
            }
        } catch (SQLException e) {
            System.err.println("Error en UsuarioDAO.validarUsuario: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Error al validar usuario", e);
        }

        return usuario;
    }
}
