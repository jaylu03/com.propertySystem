package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.SubCategoryVO;

@Repository
public class SubCategoryDAOImpl implements SubCategoryDAO {

	@Autowired
	SessionFactory sessionFactory;

	public void saveSubCategory(SubCategoryVO subcategoryVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(subcategoryVO);
	}

	public List searchSubCategory() {
		Session session = this.sessionFactory.getCurrentSession();

		Query q = session.createQuery("from SubCategoryVO where status = true");

		List list = q.list();

		return list;
	}

	public List deleteSubCategory(SubCategoryVO subcategoryVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		
		Query query = session.createQuery("from SubCategoryVO where id="+subcategoryVO.getId());
		
		List ls = query.list();
		return ls;
		
		/*session.delete(subcategoryVO);*/
	}

	public List editSubCategory(SubCategoryVO subcategoryVO) {
		Session session = sessionFactory.openSession();

		Query q = session.createQuery("from SubCategoryVO where id=" + subcategoryVO.getId());

		List list = q.list();

		return list;
	}

}
