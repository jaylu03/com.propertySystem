package com.project.dao;

import java.util.List;

import com.project.model.CityVO;

public interface CityDAO {

	public void saveCity(CityVO cityVO);
	
	public List searchCity();
	
	public List deleteCity(CityVO cityVO);
	
	public List editCity(CityVO cityVO);
}
