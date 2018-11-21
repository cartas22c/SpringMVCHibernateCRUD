package com.jwt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
 import com.jwt.model.Usuario;
 import com.jwt.service.UsuarioManager;


@Controller
@RequestMapping("login")
public class LoginController {

	@Autowired
	private UsuarioManager usuarioManager;
 



	public void setUsuarioManager(UsuarioManager usuarioManager) {
		this.usuarioManager = usuarioManager;
	}


	@RequestMapping (method=RequestMethod.GET)
	public String getForm()
	{
		System.out.println("Preparing the model for Login");
		//We could prepare the model here instead of using  @ModelAttribute
		return "login";
	}


	@RequestMapping (method=RequestMethod.POST)
	public String processForm(@ModelAttribute ("login") Usuario login, Model model)
	{	String page = "";
		System.out.println("Login in with "+login);
		Usuario userCurrent = usuarioManager.getUserByLogin(login.getLogin());
		if ( userCurrent!=null) {
			if(login.getPassword().equals(userCurrent.getPassword())) {
				
				 switch (userCurrent.getLevel()) {
				 case 1: page= "listado";
					 break;
				 case 2: page = "admin";
					 break;
			     default: page = "login";
			    		 break;
				 
				 }
				 return "redirect:/" + page;
			}

			else
			{
				model.addAttribute("message", "Credentials are not valid");
				return "login";
			}}
		else {model.addAttribute("message", "Credentials are not valid");
		return "login";}
	}

	@ModelAttribute("login")
	public Usuario prepareModel()
	{
		System.out.println("Invoking prepareModel()");
		return new Usuario();
	}

	



}
