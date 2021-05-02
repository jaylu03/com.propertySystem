package com.project.service;

import java.util.List;

import com.project.model.ComplainVO;

public interface ComplainService {

	/*public void loadComplain(ComplainVO complainVO);*/
	
	public void saveComplain(ComplainVO complainVO);
	
	public List searchComplain();

	public List searchComplainByUserId(int id);

	public List getReplyById(int id);
}
