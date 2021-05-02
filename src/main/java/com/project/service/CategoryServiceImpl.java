package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CategoryDAO;
import com.project.model.CategoryVO;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryDAO categoryDAO;

	@Override
	public void saveCategory(CategoryVO categoryVO) {
		this.categoryDAO.saveCategory(categoryVO);
	}

	@Override
	public List searchCategory() {
		return this.categoryDAO.searchCategory();

	}

	@Override
	public List deleteCategory(CategoryVO categoryVO) {
		return this.categoryDAO.deleteCategory(categoryVO);
	}

	@Override
	public List editCategory(CategoryVO categoryVO) {
		return this.categoryDAO.editCategory(categoryVO);

	}

}
