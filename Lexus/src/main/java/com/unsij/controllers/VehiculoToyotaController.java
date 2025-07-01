package com.unsij.controllers;

import com.unsij.beans.Vehiculo;
import com.unsij.services.VehiculoService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/vehiculostoyota")
public class VehiculoToyotaController extends HttpServlet {

    private VehiculoService servicio = new VehiculoService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Vehiculo> lista = servicio.obtenerToyota();  // Obtiene solo vehículos Toyota
        request.setAttribute("listaVehiculos", lista);
        request.getRequestDispatcher("/vehiculostoyota.jsp").forward(request, response);
    }
}
