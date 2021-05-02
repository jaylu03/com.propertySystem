package com.project.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.PropertyImageVO;
import com.project.model.SellPropertyImageVO;
import com.project.model.SellVO;

@Repository
public class SellDAOImpl implements SellDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public void saveSellProperty(SellVO sellVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(sellVO);
		
	}

	@Override
	public void saveSellPropertyImage(SellPropertyImageVO sellPropertyImageVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(sellPropertyImageVO);
		
	}

}
