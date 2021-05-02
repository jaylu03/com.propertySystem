package com.project.dao;

import java.util.List;

import com.project.model.ComplainVO;

public interface ComplainDAO {

	/*public void loadComplain(ComplainVO complainVO);*/
	
	public void saveComplain(ComplainVO complainVO);
	
	public List searchComplain();
	/*
	public List deleteCategory(CategoryVO categoryVO);
	
	public List editCategory(CategoryVO categoryVO);*/

	public List searchComplainByUserId(int id);

	public List getReplyById(int id);
}
