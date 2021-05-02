package com.project.service;

import java.util.List;

import com.project.model.LoginVO;

public interface LoginService {

	List searchLoginByUsername(String username);

	void saveLogin(LoginVO loginVO);

	public List verifyEmail(String forgotpassword);

	/*List<LoginVO> getLogin(String userName);*/

}
