package com.jwt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.jwt.dao.CentroTuristicoDAO;
import com.jwt.dao.ClienteDAO;
import com.jwt.model.Cliente;

 
public class ClienteManagerImp implements ClienteManager{

	@Autowired
	private ClienteDAO clienteDAO;
	
	@Override
	public void addCliente(Cliente p) {
		// TODO Auto-generated method stub
		clienteDAO.addCliente(p);
	}

	@Override
	public void updateCliente(Cliente p) {
		// TODO Auto-generated method stub
		clienteDAO.updateCliente(p);
	}

	@Override
	public List<Cliente> listClientes() {
		// TODO Auto-generated method stub
		return clienteDAO.listClientes();
	}

	@Override
	public Cliente getUserById(int id) {
		// TODO Auto-generated method stub
		return clienteDAO.getClienteById(id);
	}

	@Override
	public void removeCliente(int id) {
		// TODO Auto-generated method stub
		clienteDAO.removeCliente(id);
	}

}
