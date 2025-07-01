package com.unsij.beans;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.beans.*;
import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author elton
 */
public class Consultas implements Serializable {
    
    private int idConsulta;
    private Date fecha;
    private Integer idProblema;
    private Integer idRecomendaciones;
    
    public Consultas() {
        this.idConsulta = 0;
        this.fecha = new Date(); // Fecha actual por defecto
        this.idProblema = null;
        this.idRecomendaciones = null;
    }
    
    public int getIdConsulta() {
        return idConsulta;
    }
    
    public void setIdConsulta(int idConsulta) {
        this.idConsulta = idConsulta;
    }
    
    public Date getFecha() {
        return fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
    public Integer getIdProblema() {
        return idProblema;
    }
    
    public void setIdProblema(Integer idProblema) {
        this.idProblema = idProblema;
    }
    
    public Integer getIdRecomendaciones() {
        return idRecomendaciones;
    }
    
    public void setIdRecomendaciones(Integer idRecomendaciones) {
        this.idRecomendaciones = idRecomendaciones;
    }
}