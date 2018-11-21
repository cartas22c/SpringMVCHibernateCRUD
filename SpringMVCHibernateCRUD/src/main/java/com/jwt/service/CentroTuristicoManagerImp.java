package com.jwt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.jwt.dao.CentroTuristicoDAO;
 import com.jwt.model.CentroTuristico;

public class CentroTuristicoManagerImp implements CentroTuristicoManager {

	@Autowired
	private CentroTuristicoDAO centroDAO;
	
	@Override
	@Transactional
	public List<CentroTuristico> listCentros() {
		
		return centroDAO.listCentros();
	}

}
