package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.RegisterVO;

@Repository
public class RegisterDAOImpl implements RegisterDAO{

	@Autowired 
	SessionFactory sessionFactory;
	
	
	public void saveRegister(RegisterVO registerVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(registerVO);
	}
	
	
	public List searchRegister()
	{
			Session session = sessionFactory.getCurrentSession();
			
			Query q=session.createQuery("from RegisterVO where status=true");
			
			List list=q.list();
	
		return list;
	}

	public List searchRegister(int id)
	{
			Session session = sessionFactory.getCurrentSession();
			
			Query q=session.createQuery("from RegisterVO where status=true and id = " +   id);
			
			List list=q.list();
	
		return list;
	}

	@Override
	public void saveAadhaarImage(RegisterVO registerVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(registerVO);
		
	}


	@Override
	public List searchAadhaarImage(int id) {
		
		Session session = sessionFactory.openSession();

		Query q = session.createQuery("from AadhaarImageVO where registerVO=" +id);

		List list = q.list();

		return list;
	}


	/*@Override
	public List rejectRegister(RegisterVO registerVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from RegisterVO where id="+registerVO.getId());
		
		List ls = query.list();
		return ls;
	}


	@Override
	public List acceptRegister(RegisterVO registerVO) {
		
		Session session = sessionFactory.openSession();
		
		Query q=session.createQuery("from RegisterVO where id="+registerVO.getId());
		
		List list=q.list();

	return list;
	}*/
}
