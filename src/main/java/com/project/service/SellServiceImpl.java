package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.SellDAO;
import com.project.model.SellPropertyImageVO;
import com.project.model.SellVO;

@Service
@Transactional
public class SellServiceImpl implements SellService{

	@Autowired
	SellDAO sellDAO;
	
	@Override
	public void saveSellProperty(SellVO sellVO) {
		this.sellDAO.saveSellProperty(sellVO);
		
	}

	@Override
	public void saveSellPropertyImage(SellPropertyImageVO sellPropertyImageVO) {
		this.sellDAO.saveSellPropertyImage(sellPropertyImageVO);
		
	}

}
