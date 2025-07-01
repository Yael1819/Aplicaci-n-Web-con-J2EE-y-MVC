package com.unsij.dao;

import com.unsij.beans.Vehiculo;
import com.unsij.utils.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class VehiculoDAO {

    public List<Vehiculo> obtenerVehiculosPorMarca(String marca) {
        List<Vehiculo> lista = new ArrayList<>();
        String sql = "SELECT * FROM Vehiculos WHERE marca = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, marca);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Vehiculo v = new Vehiculo();
                v.setIdVehiculo(rs.getInt("id_vehiculo"));
                v.setModelo(rs.getString("modelo"));
                v.setMotor(rs.getString("motor"));
                v.setCombustible(rs.getString("combustible"));
                v.setConsumo(rs.getDouble("consumo"));
                v.setAño(rs.getInt("año"));
                v.setImagenUrl(rs.getString("imagen_url"));
                v.setMarca(rs.getString("marca"));
                lista.add(v);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return lista;
    }
}
