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
public class Soluciones implements Serializable {
    
    private int idSolucion;
    private String nombre;
    private Integer idProblema;
    private Integer idHerramienta;
    
    public Soluciones() {
        this.idSolucion = 0;
        this.nombre = "";
        this.idProblema = null;
        this.idHerramienta = null;
    }
    
    public int getIdSolucion() {
        return idSolucion;
    }
    
    public void setIdSolucion(int idSolucion) {
        this.idSolucion = idSolucion;
    }
    
    public String getNombre() {
        return nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public Integer getIdProblema() {
        return idProblema;
    }
    
    public void setIdProblema(Integer idProblema) {
        this.idProblema = idProblema;
    }
    
    public Integer getIdHerramienta() {
        return idHerramienta;
    }
    
    public void setIdHerramienta(Integer idHerramienta) {
        this.idHerramienta = idHerramienta;
    }
}