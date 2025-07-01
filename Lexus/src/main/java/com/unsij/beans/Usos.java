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
public class Usos implements Serializable {
    
    private int idUso;
    private String nombre;
    private Integer idHerramienta;
    
    public Usos() {
        this.idUso = 0;
        this.nombre = "";
        this.idHerramienta = null;
    }
    
    public int getIdUso() {
        return idUso;
    }
    
    public void setIdUso(int idUso) {
        this.idUso = idUso;
    }
    
    public String getNombre() {
        return nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public Integer getIdHerramienta() {
        return idHerramienta;
    }
    
    public void setIdHerramienta(Integer idHerramienta) {
        this.idHerramienta = idHerramienta;
    }
}