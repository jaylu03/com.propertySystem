package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ConstructionStatusVO;


@Repository
public class ConstructionStatusDAOImpl implements ConstructionStatusDAO{

	@Autowired 
	SessionFactory sessionFactory;
	
	
	public void saveConstructionStatus(ConstructionStatusVO constructionStatusVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(constructionStatusVO);
	}
	
	
	public List searchConstructionStatus()
	{
			Session session = sessionFactory.getCurrentSession();
			
			Query q=session.createQuery("from ConstructionStatusVO where status=true");
			
			List list=q.list();
	
		return list;
	}
	
	
	public List deleteConstructionStatus(ConstructionStatusVO constructionStatusVO) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ConstructionStatusVO where id="+constructionStatusVO.getId());
		
		List ls = query.list();
		return ls;
	}
	
	
	public List editConstructionStatus(ConstructionStatusVO constructionStatusVO)
	{
			Session session = sessionFactory.openSession();
			
			Query q=session.createQuery("from ConstructionStatusVO where id="+constructionStatusVO.getId());
			
			List list=q.list();
	
		return list;
	}

}
