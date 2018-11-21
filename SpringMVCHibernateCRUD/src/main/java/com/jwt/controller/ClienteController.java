package com.jwt.controller;

 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.jwt.model.Cliente;
import com.jwt.service.CentroTuristicoManager;
import com.jwt.service.ClienteManager;
 
@Controller

public class ClienteController {
	
	@Autowired
	private CentroTuristicoManager ctManager;

	@Autowired
	private ClienteManager clienteManager;
	
	
 	@RequestMapping (value = "admin", method=RequestMethod.GET)
	public String cliente(Model model) { 
		model.addAttribute("centros", ctManager.listCentros()); 
		model.addAttribute("clientes", clienteManager.listClientes()); 
		model.addAttribute("cliente", new Cliente()); 
		return "admin"; 

	}
		
	 

    @RequestMapping(value = { "/edit-{id}-cliente" }, method = RequestMethod.GET)
    public String editEmployee(@PathVariable String id, ModelMap model) {
        Cliente cliente = clienteManager.getUserById(Integer.parseInt(id));
        model.addAttribute("cliente", cliente);
		model.addAttribute("centros", ctManager.listCentros()); 
        model.addAttribute("edit", true);
        return "update";
    }	
	
	
	
	@RequestMapping(value = "/admin/saveCliente", method = RequestMethod.POST)
	public ModelAndView saveEmployee(@ModelAttribute Cliente cliente) {
		
		if (cliente.getIdCliente() == 0) { // if employee id is 0 then creating the
			// employee other updating the employee
			clienteManager.addCliente(cliente);
		}  
		return new ModelAndView("redirect:/");
	}
	
	
	// Setters


	public void setCtManager(CentroTuristicoManager ctManager) {
		this.ctManager = ctManager;
	}

	public void setClienteManager(ClienteManager clienteManager) {
		this.clienteManager = clienteManager;
	}
	
}