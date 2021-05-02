package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ComplainVO;

@Repository
public class ComplainDAOImpl implements ComplainDAO {

	@Autowired
	SessionFactory sessionFactory;

	/*
	 * public void loadComplain(ComplainVO complainVO) {
	 * 
	 * }
	 */
	public void saveComplain(ComplainVO complainVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(complainVO);
	}

	public List searchComplain() {
		Session session = sessionFactory.getCurrentSession();

		Query q = session.createQuery("from ComplainVO where status=true");

		List list = q.list();

		return list;
	}

	@Override
	public List searchComplainByUserId(int id) {
		Session session = sessionFactory.getCurrentSession();

		Query q = session.createQuery("from ComplainVO where status=true and loginVO=" + id);

		List list = q.list();

		return list;
	}

	@Override
	public List getReplyById(int id) {
		Session session = sessionFactory.openSession();

		Query q = session.createQuery("from ComplainVO where status=true and id = '" + id + "'");

		List list = q.list();

		return list;
	}
}
