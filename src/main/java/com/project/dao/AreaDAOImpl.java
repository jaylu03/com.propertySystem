package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.AreaVO;

@Repository
public class AreaDAOImpl implements AreaDAO{

	@Autowired
	SessionFactory sessionFactory;

	public void saveArea(AreaVO areaVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(areaVO);
	}

	public List searchArea() {
		Session session = this.sessionFactory.getCurrentSession();

		Query q = session.createQuery("from AreaVO where status=true");

		List list = q.list();

		return list;
	}

	public List deleteArea(AreaVO areaVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from AreaVO where id="+areaVO.getId());
		
		List ls = query.list();
		return ls;
	}

	public List editArea(AreaVO areaVO) {
		Session session = sessionFactory.openSession();

		Query q = session.createQuery("from AreaVO where id=" + areaVO.getId());

		List list = q.list();

		return list;
	}

}
