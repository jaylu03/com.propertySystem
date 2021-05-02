package com.project.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.OTPTable;

@Repository
public class OTPTableDAOImpl implements OTPTableDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveOTPTable(OTPTable otptable) {
		
		System.out.println(otptable.getOtp());
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(otptable);
		
	}

	@Override
	public List<OTPTable> getOTPTable() {

		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from OTPTable");
		return q.list();
		
	}

	@SuppressWarnings("unchecked")
	public List<OTPTable> findById(int Id) {
		List<OTPTable> otptableList = new ArrayList<OTPTable>();
		try {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from OTPTable where Id = " + Id);
			otptableList = (List<OTPTable>) query.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return otptableList;
	}

	
	public List getByEmail(String forgetpassword) {
	
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from OTPTable where email = '" + forgetpassword + "'");
		return q.list();
	}

	@Override
	public List verifyOTP(OTPTable otpTable) {
		
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from OTPTable where email = '" + otpTable.getEmail() + "' and otp = '"
				+ otpTable.getOtp() + "' and token = '" + otpTable.getToken() + "' ");
		return q.list();
	}

	
}
