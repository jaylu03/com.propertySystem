package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CityDAO;
import com.project.model.CityVO;

@Service
@Transactional
public class CityServiceImpl implements CityService{

	@Autowired
	CityDAO cityDAO;
	
	@Override
	public void saveCity(CityVO cityVO) {
		this.cityDAO.saveCity(cityVO);
	}

	@Override
	public List searchCity() {
		return this.cityDAO.searchCity();

	}

	@Override
	public List deleteCity(CityVO cityVO) {
		return this.cityDAO.deleteCity(cityVO);
	}

	@Override
	public List editCity(CityVO cityVO) {
		return this.cityDAO.editCity(cityVO);

	}

}
