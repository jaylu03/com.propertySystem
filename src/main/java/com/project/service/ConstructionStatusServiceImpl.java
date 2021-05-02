package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ConstructionStatusDAO;
import com.project.model.ConstructionStatusVO;

@Service
@Transactional
public class ConstructionStatusServiceImpl implements ConstructionStatusService{

	@Autowired
	ConstructionStatusDAO constructionStatusDAO;
	
	@Override
	public void saveConstructionStatus(ConstructionStatusVO constructionStatusVO) {
		this.constructionStatusDAO.saveConstructionStatus(constructionStatusVO);
	}

	@Override
	public List searchConstructionStatus() {
		return this.constructionStatusDAO.searchConstructionStatus();

	}

	@Override
	public List deleteConstructionStatus(ConstructionStatusVO constructionStatusVO) {
		return this.constructionStatusDAO.deleteConstructionStatus(constructionStatusVO);
	}

	@Override
	public List editConstructionStatus(ConstructionStatusVO constructionStatusVO) {
		return this.constructionStatusDAO.editConstructionStatus(constructionStatusVO);

	}

}
