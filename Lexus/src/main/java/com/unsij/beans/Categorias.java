/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.unsij.beans;

import java.beans.*;
import java.io.Serializable;

/**
 *
 * @author elton
 */
public class Categorias implements Serializable {
    
    private int idVehiculo;
    private String modelo;
    private String marca;
    private int año;
    private int idProblema;
    private int idUsuario;
    
    public Categorias() {
        this.idVehiculo = 0;
        this.modelo = "";
        this.marca = "";
        this.año = 0;
        this.idProblema = 0;
        this.idUsuario = 0;
    }
    
    public int getIdVehiculo() {
        return idVehiculo;
    }
    
    public void setIdVehiculo(int idVehiculo) {
        this.idVehiculo = idVehiculo;
    }
    
    public String getModelo() {
        return modelo;
    }
    
    public void setModelo(String modelo) {
        this.modelo = modelo;
    }
    
    public String getMarca() {
        return marca;
    }
    
    public void setMarca(String marca) {
        this.marca = marca;
    }
    
    public int getAño() {
        return año;
    }
    
    public void setAño(int año) {
        this.año = año;
    }
    
    public int getIdProblema() {
        return idProblema;
    }
    
    public void setIdProblema(int idProblema) {
        this.idProblema = idProblema;
    }
    
    public int getIdUsuario() {
        return idUsuario;
    }
    
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
}