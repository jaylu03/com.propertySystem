package com.project.dao;

import java.util.List;

import com.project.model.AreaVO;

public interface AreaDAO {

	public void saveArea(AreaVO areaVO);
	
	public List searchArea();
	
	public List deleteArea(AreaVO areaVO);
	
	public List editArea(AreaVO areaVO);

}
