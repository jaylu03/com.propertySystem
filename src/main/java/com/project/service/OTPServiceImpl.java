package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.OTPTableDAO;
import com.project.model.OTPTable;

@Service
@Transactional
public class OTPServiceImpl implements OTPService{

	@Autowired
	private OTPTableDAO otptableDAO;

	public void saveOTPTable(OTPTable otptable) {
		this.otptableDAO.saveOTPTable(otptable);
	}

	public List<OTPTable> getOTPTable() {
		return this.otptableDAO.getOTPTable();

	}

	public List<OTPTable> findById(int Id) {
		return this.otptableDAO.findById(Id);
	}

	public List getByEmail(String forgetpassword) {
		return this.otptableDAO.getByEmail(forgetpassword);
	}

	@Override
	public List verifyOTP(OTPTable otpTable) {
		return this.otptableDAO.verifyOTP(otpTable);
	}
}
