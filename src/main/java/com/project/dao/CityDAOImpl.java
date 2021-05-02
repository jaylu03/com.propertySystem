package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CityVO;


@Repository
public class CityDAOImpl implements CityDAO{

	@Autowired
	SessionFactory sessionFactory;

	public void saveCity(CityVO cityVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(cityVO);
	}

	public List searchCity() {
		Session session = this.sessionFactory.getCurrentSession();

		Query q = session.createQuery("from CityVO where status=true");

		List list = q.list();

		return list;
	}

	public List deleteCity(CityVO cityVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from CityVO where id="+cityVO.getId());
		
		List ls = query.list();
		return ls;
	}

	public List editCity(CityVO cityVO) {
		Session session = sessionFactory.openSession();

		Query q = session.createQuery("from CityVO where id=" + cityVO.getId());

		List list = q.list();

		return list;
	}
}
