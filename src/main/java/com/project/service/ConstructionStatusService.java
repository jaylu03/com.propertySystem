package com.project.service;

import java.util.List;

import com.project.model.ConstructionStatusVO;

public interface ConstructionStatusService {

	public void saveConstructionStatus(ConstructionStatusVO constructionStatusVO);
	
	public List searchConstructionStatus();
	
	public List deleteConstructionStatus(ConstructionStatusVO constructionStatusVO);
	
	public List editConstructionStatus(ConstructionStatusVO constructionStatusVO);
}
