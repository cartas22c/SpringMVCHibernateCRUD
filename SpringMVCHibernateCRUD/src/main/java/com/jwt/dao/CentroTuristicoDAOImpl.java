package com.jwt.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
 
import com.jwt.model.CentroTuristico;
 
public class CentroTuristicoDAOImpl implements CentroTuristicoDAO{
	@Autowired
	private SessionFactory sessionFactory;
	//Logger logger = LoggerFactory.getLogger(UsuarioDAOImpl.class);


	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<CentroTuristico> listCentros() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<CentroTuristico> centrosList = session.createQuery("from com.jwt.model.CentroTuristico").list();
		return centrosList;
	}




}
