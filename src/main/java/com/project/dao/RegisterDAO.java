package com.project.dao;

import java.util.List;

import com.project.model.RegisterVO;

public interface RegisterDAO {

	public void saveRegister(RegisterVO registerVO);
	
	public List searchRegister();
	
	public void saveAadhaarImage(RegisterVO registerVO);
	
	public List searchAadhaarImage(int id);
	
	public List searchRegister(int id);
	
	/*public List rejectRegister(RegisterVO registerVO);
	
	public List acceptRegister(RegisterVO registerVO);*/
}
