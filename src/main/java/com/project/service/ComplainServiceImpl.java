package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ComplainDAO;
import com.project.model.ComplainVO;

@Service
@Transactional
public class ComplainServiceImpl implements ComplainService{

	@Autowired
	ComplainDAO complainDAO;
	
	/*@Transactional
	public void loadComplain(ComplainVO complainVO) {
		this.complainDAO.loadComplain(complainVO);
	}*/
	
	@Override
	public void saveComplain(ComplainVO complainVO) {
		this.complainDAO.saveComplain(complainVO);
	}

	@Override
	public List searchComplain() {
		return this.complainDAO.searchComplain();

	}

	@Override
	public List searchComplainByUserId(int id) {
		return this.complainDAO.searchComplainByUserId(id);
		
	}

	@Override
	public List getReplyById(int id) {
		return this.complainDAO.getReplyById(id);
	}
}
