package com.jwt.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jwt.model.Cliente;

@Transactional
@Repository  
public class ClienteDAOImpl implements ClienteDAO{
	@Autowired
	private SessionFactory sessionFactory;


	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addCliente(Cliente p) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
	}

	@Override
	public void updateCliente(Cliente p) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
	}

	@Override
	public List<Cliente> listClientes() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<Cliente> clientesList = session.createQuery("from com.jwt.model.Cliente").list();
	   return clientesList;
	}

	@Override
	public Cliente getClienteById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeCliente(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Cliente p = (Cliente) session.load(Cliente.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}

	}

}