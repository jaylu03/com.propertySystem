package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.AreaDAO;
import com.project.model.AreaVO;


@Service
@Transactional
public class AreaServiceImpl implements AreaService{

	@Autowired
	AreaDAO areaDAO;
	
	@Override
	public void saveArea(AreaVO areaVO) {
		this.areaDAO.saveArea(areaVO);
	}

	@Override
	public List searchArea() {
		return this.areaDAO.searchArea();

	}

	@Override
	public List deleteArea(AreaVO areaVO) {
		return this.areaDAO.deleteArea(areaVO);
	}

	@Override
	public List editArea(AreaVO areaVO) {
		return this.areaDAO.editArea(areaVO);

	}

}
