package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.FeedbackVO;

@Repository
public class FeedbackDAOImpl implements FeedbackDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	public void saveFeedback(FeedbackVO feedbackVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(feedbackVO);
	}

	public List searchFeedback() {
		Session session = sessionFactory.getCurrentSession();

		Query q = session.createQuery("from FeedbackVO where status=true");

		List list = q.list();

		return list;
	}

	@Override
	public List deleteFeedback(FeedbackVO feedbackVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from FeedbackVO where id="+feedbackVO.getId());
		
		List ls = query.list();
		return ls;
	}
}
