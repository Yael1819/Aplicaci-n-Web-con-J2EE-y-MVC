package com.unsij.beans;

public class Vehiculo {
    private int idVehiculo;
    private String modelo;
    private String motor;
    private String combustible;
    private double consumo;
    private int año;
    private String imagenUrl;
    private String marca;

    // Getters y setters
    public int getIdVehiculo() { return idVehiculo; }
    public void setIdVehiculo(int idVehiculo) { this.idVehiculo = idVehiculo; }

    public String getModelo() { return modelo; }
    public void setModelo(String modelo) { this.modelo = modelo; }

    public String getMotor() { return motor; }
    public void setMotor(String motor) { this.motor = motor; }

    public String getCombustible() { return combustible; }
    public void setCombustible(String combustible) { this.combustible = combustible; }

    public double getConsumo() { return consumo; }
    public void setConsumo(double consumo) { this.consumo = consumo; }

    public int getAño() { return año; }
    public void setAño(int año) { this.año = año; }

    public String getImagenUrl() { return imagenUrl; }
    public void setImagenUrl(String imagenUrl) { this.imagenUrl = imagenUrl; }

    public String getMarca() { return marca; }
    public void setMarca(String marca) { this.marca = marca; }
}
