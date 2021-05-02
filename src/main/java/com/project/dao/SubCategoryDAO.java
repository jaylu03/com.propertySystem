package com.project.dao;

import java.util.List;
import com.project.model.SubCategoryVO;

public interface SubCategoryDAO {

	public void saveSubCategory(SubCategoryVO subcategoryVO);
	
	public List searchSubCategory();
	
	public List deleteSubCategory(SubCategoryVO subcategoryVO);
	
	public List editSubCategory(SubCategoryVO subcategoryVO);
}
