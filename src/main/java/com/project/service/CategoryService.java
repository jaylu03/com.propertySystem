package com.project.service;

import java.util.List;

import com.project.model.CategoryVO;

public interface CategoryService {

	public void saveCategory(CategoryVO categoryVO);
	
	public List searchCategory();
	
	public List deleteCategory(CategoryVO categoryVO);
	
	public List editCategory(CategoryVO categoryVO);
}
