package com.jwt.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

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
import com.jwt.service.UsuarioManager;

@Controller
public class ClienteController {
	
	@Autowired
	private CentroTuristicoManager ctManager;

	@Autowired
	private ClienteManager clienteManager;
	
	

	public void setCtManager(CentroTuristicoManager ctManager) {
		this.ctManager = ctManager;
	}

	public void setClienteManager(ClienteManager clienteManager) {
		this.clienteManager = clienteManager;
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String cliente(Model model) { 
		model.addAttribute("centros", ctManager.listCentros()); 
		model.addAttribute("cliente", new Cliente()); 
		return "admin"; 

	}
	
	
	@RequestMapping(value = "/listado", method = RequestMethod.GET)
	public String clientes(Model model) { 
 		model.addAttribute("clientes", clienteManager.listClientes()); 
		return "listado"; 

	}
	
	@RequestMapping(value = "/saveCliente", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute Cliente cliente) {
		
		if (cliente.getIdCliente() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			clienteManager.addCliente(cliente);
		}  
		return new ModelAndView("redirect:/");
	}
	
}