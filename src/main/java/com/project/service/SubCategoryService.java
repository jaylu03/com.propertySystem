package com.project.service;

import java.util.List;
import com.project.model.SubCategoryVO;

public interface SubCategoryService {

	public void saveSubCategory(SubCategoryVO subcategoryVO);
	
	public List searchSubCategory();
	
	public List deleteSubCategory(SubCategoryVO subcategoryVO);
	
	public List editSubCategory(SubCategoryVO subcategoryVO);
}
