package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.PropertyImageVO;
import com.project.model.PropertyVO;


@Repository
public class PropertyDAOImpl implements PropertyDAO{

	@Autowired
	SessionFactory sessionFactory;

	public void saveProperty(PropertyVO propertyVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(propertyVO);
	}

	public List searchProperty() {
		Session session = this.sessionFactory.getCurrentSession();

		Query q = session.createQuery("from PropertyVO where status=true");

		List list = q.list();

		return list;
	}

	public List deleteProperty(PropertyVO propertyVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from PropertyVO where id="+propertyVO.getId());
		
		List ls = query.list();
		return ls;
	}

	public List editProperty(PropertyVO propertyVO) {
		Session session = sessionFactory.openSession();

		Query q = session.createQuery("from PropertyVO where id=" + propertyVO.getId());

		List list = q.list();

		return list;
	}

	@Override
	public void savePropertyImage(PropertyImageVO productImageVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(productImageVO);
	}

	@Override
	public List searchProductImage(int id) {
		Session session = sessionFactory.openSession();

		Query q = session.createQuery("from PropertyImageVO where propertyVO=" +id);

		List list = q.list();

		return list;
	}

	@Override
	public List searchByCityStateArea(int stateId, int cityId, int areaId) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("from PropertyImageVO where propertyVO.stateVO=" +stateId+" and propertyVO.cityVO="+cityId 
				+" and propertyVO.areaVO="+areaId+" GROUP BY propertyVO");
		List list = q.list();

		return list;
	}

	@Override
	public List searchPropertyImage() {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("FROM PropertyImageVO GROUP BY propertyVO");
		List list = q.list();

		return list;
	}

	@Override
	public List searchPropertyImageById(int id) {
		Session session = sessionFactory.openSession();
		Query q = session.createQuery("FROM PropertyImageVO where propertyVO="+id);
		List list = q.list();

		return list;
	}

}
