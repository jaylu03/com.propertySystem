package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CategoryVO;

@Repository
public class CategoryDAOImpl implements CategoryDAO{

	@Autowired 
	SessionFactory sessionFactory;
	
	
	public void saveCategory(CategoryVO categoryVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(categoryVO);
	}
	
	
	public List searchCategory()
	{
			Session session = sessionFactory.getCurrentSession();
			
			Query q=session.createQuery("from CategoryVO where status=true");
			
			List list=q.list();
	
		return list;
	}
	
	
	public List deleteCategory(CategoryVO categoryVO) 
	{
		Session session = this.sessionFactory.getCurrentSession();
		
		System.out.println("======================");
		System.out.println("======================");
		System.out.println("======================");
		System.out.println("======================");
		System.out.println(categoryVO.getId());
		
		System.out.println("======================");
		System.out.println("======================");
		System.out.println("======================");
		
		Query query = session.createQuery("from CategoryVO where id="+categoryVO.getId());
	
		List ls = query.list();
		return ls;
	}
	
	
	public List editCategory(CategoryVO categoryVO)
	{
			Session session = sessionFactory.openSession();
			
			Query q=session.createQuery("from CategoryVO where id="+categoryVO.getId());
			
			List list=q.list();
	
		return list;
	}

}
