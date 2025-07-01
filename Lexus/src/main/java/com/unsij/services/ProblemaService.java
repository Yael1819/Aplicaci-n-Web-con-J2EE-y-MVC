package com.unsij.services;

import com.unsij.beans.Problema;
import com.unsij.dao.ProblemaDAO;

public class ProblemaService {

    private ProblemaDAO problemaDAO = new ProblemaDAO();

    public boolean registrar(Problema problema) {
        return problemaDAO.registrarProblema(problema);
    }
}
