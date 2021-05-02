package com.project.service;

import java.util.List;

import com.project.model.PropertyImageVO;
import com.project.model.PropertyVO;

public interface PropertyService {

	public void saveProperty(PropertyVO propertyVO);
	
	public List searchProperty();
	
	public List deleteProperty(PropertyVO propertyVO);
	
	public List editProperty(PropertyVO propertyVO);

	public void savePropertyImage(PropertyImageVO productImageVO);

	public List searchProductImage(int id);

	public List searchByCityStateArea(int stateId, int cityId, int areaId);

	public List searchPropertyImage();

	public List searchPropertyImageById(int id);
}
