package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.StateVO;

@Repository
public class StateDAOImpl implements StateDAO{

	@Autowired 
	SessionFactory sessionFactory;
	public void saveState(StateVO stateVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(stateVO);
	}
	
	
	public List searchState()
	{
			Session session = sessionFactory.getCurrentSession();
			
			Query q=session.createQuery("from StateVO where status=true");
			
			List list=q.list();
	
		return list;
	}
	
	
	public List deleteState(StateVO stateVO) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from StateVO where id="+stateVO.getId());
		
		List ls = query.list();
		return ls;
		
	}
	
	
	public List editState(StateVO stateVO)
	{
			Session session = sessionFactory.openSession();
			
			Query q=session.createQuery("from StateVO where id="+stateVO.getId());
			
			List list=q.list();
	
		return list;
	}

}
