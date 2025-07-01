package com.unsij.dao;

import com.unsij.beans.Problema;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ProblemaDAO {

    public boolean registrarProblema(Problema problema) {
        boolean registrado = false;
        String sql = "INSERT INTO Problemas (nombre, descripcion, id_vehiculo, id_categoria) VALUES (?, ?, ?, ?)";

        try (Connection conn = com.unsij.utils.DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, problema.getNombre());
            stmt.setString(2, problema.getDescripcion());
            stmt.setInt(3, problema.getIdVehiculo());
            stmt.setInt(4, problema.getIdCategoria());

            registrado = stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return registrado;
    }
}
