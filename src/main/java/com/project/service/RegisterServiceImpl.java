package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.RegisterDAO;
import com.project.model.RegisterVO;

@Service
@Transactional
public class RegisterServiceImpl implements RegisterService{

	@Autowired
	RegisterDAO registerDAO;
	
	@Override
	public void saveRegister(RegisterVO registerVO) {
		this.registerDAO.saveRegister(registerVO);
	}

	@Override
	public List searchRegister() {
		return this.registerDAO.searchRegister();
	}

	@Override
	public void saveAadhaarImage(RegisterVO registerVO) {
		this.registerDAO.saveAadhaarImage(registerVO);
		
	}

	@Override
	public List searchAadhaarImage(int id) {
		return this.registerDAO.searchAadhaarImage(id);
	}

	@Override
	public List searchRegister(int id) {
		// TODO Auto-generated method stub
		return this.registerDAO.searchRegister(id);
	}

	/*@Override
	public List rejectRegister(RegisterVO registerVO) {
		return this.registerDAO.rejectRegister(registerVO);
	}

	@Override
	public List acceptRegister(RegisterVO registerVO) {
		return this.registerDAO.acceptRegister(registerVO);
	}*/

}
