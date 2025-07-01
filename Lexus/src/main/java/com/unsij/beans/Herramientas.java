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
public class Herramientas implements Serializable {
    
    private int idHerramienta;
    private String nombre;
    private Integer idSolucion;
    private Integer idUso;
    
    public Herramientas() {
        this.idHerramienta = 0;
        this.nombre = "";
        this.idSolucion = null;
        this.idUso = null;
    }
    
    public int getIdHerramienta() {
        return idHerramienta;
    }
    
    public void setIdHerramienta(int idHerramienta) {
        this.idHerramienta = idHerramienta;
    }
    
    public String getNombre() {
        return nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public Integer getIdSolucion() {
        return idSolucion;
    }
    
    public void setIdSolucion(Integer idSolucion) {
        this.idSolucion = idSolucion;
    }
    
    public Integer getIdUso() {
        return idUso;
    }
    
    public void setIdUso(Integer idUso) {
        this.idUso = idUso;
    }
}