package com.project.service;

import java.util.List;

import com.project.model.RegisterVO;

public interface RegisterService {

	public void saveRegister(RegisterVO registerVO);
	
	public List searchRegister();
	
	public void saveAadhaarImage(RegisterVO registerVO);

	public List searchAadhaarImage(int id);
	
	public List searchRegister(int id);
	/*public List rejectRegister(RegisterVO registerVO);
	
	public List acceptRegister(RegisterVO registerVO);*/
}
