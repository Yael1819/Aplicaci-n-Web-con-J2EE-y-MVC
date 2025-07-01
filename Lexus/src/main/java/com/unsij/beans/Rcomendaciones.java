/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.unsij.beans;

import java.beans.*;
import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author elton
 */
public class Rcomendaciones implements Serializable {
    
    private int idRecomendacion;
    private Date fechaDescripcion;
    private String descripcion;
    private Integer idConsulta;
    
    public Rcomendaciones() {
        this.idRecomendacion = 0;
        this.fechaDescripcion = new Date(); // Fecha actual por defecto
        this.descripcion = "";
        this.idConsulta = null;
    }
    
    public int getIdRecomendacion() {
        return idRecomendacion;
    }
    
    public void setIdRecomendacion(int idRecomendacion) {
        this.idRecomendacion = idRecomendacion;
    }
    
    public Date getFechaDescripcion() {
        return fechaDescripcion;
    }
    
    public void setFechaDescripcion(Date fechaDescripcion) {
        this.fechaDescripcion = fechaDescripcion;
    }
    
    public String getDescripcion() {
        return descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public Integer getIdConsulta() {
        return idConsulta;
    }
    
    public void setIdConsulta(Integer idConsulta) {
        this.idConsulta = idConsulta;
    }
}