package com.unsij.services;

import com.unsij.beans.Vehiculo;
import com.unsij.dao.VehiculoDAO;

import java.util.List;

public class VehiculoService {

    private VehiculoDAO vehiculoDAO = new VehiculoDAO();

    public List<Vehiculo> obtenerFord() {
        return vehiculoDAO.obtenerVehiculosPorMarca("Ford");
    }
    public List<Vehiculo> obtenerHonda() {
    return vehiculoDAO.obtenerVehiculosPorMarca("Honda");
}
public List<Vehiculo> obtenerToyota() {
    return vehiculoDAO.obtenerVehiculosPorMarca("Toyota");
}
public List<Vehiculo> obtenerNissan() {
    return vehiculoDAO.obtenerVehiculosPorMarca("Nissan");
}
public List<Vehiculo> obtenerChevrolet() {
    return vehiculoDAO.obtenerVehiculosPorMarca("Chevrolet");
}
}
