package com.project.dao;

import java.util.List;

import com.project.model.LoginVO;

public interface LoginDAO {

	public List searchLoginByUsername(String username);

	public void saveLogin(LoginVO loginVO);
	
	List verifyEmail(String forgotpassword);

	/*public List<LoginVO> getLogin(String userName);*/
}
