package com.jwt.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.jwt.model.Cliente;
import com.jwt.service.CentroTuristicoManager;
import com.jwt.service.ClienteManager;
 
@Controller
@RequestMapping("listado")
public class ListadoController {
	
	 

	@Autowired
	private ClienteManager clienteManager;
	

	
	
	@RequestMapping(method = RequestMethod.GET)
	public String clientes(Model model) { 
 		model.addAttribute("clientes", clienteManager.listClientes()); 
		return "listado"; 

	}
	
	 
 
	
	
	 
	
	// Setters


	 
	public void setClienteManager(ClienteManager clienteManager) {
		this.clienteManager = clienteManager;
	}
	
}