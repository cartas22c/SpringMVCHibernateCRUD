package com.jwt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jwt.model.Cliente;
import com.jwt.service.CentroTuristicoManager;
import com.jwt.service.UsuarioManager;

@Controller
public class ClienteController {
	
	@Autowired
	private CentroTuristicoManager ctManager;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String cliente(Model model) { 
		model.addAttribute("centros", ctManager.listCentros()); 
		model.addAttribute("cliente", new Cliente()); 
		return "admin"; 

	}
}