package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.SubCategoryDAO;
import com.project.model.SubCategoryVO;

@Service
@Transactional
public class SubCategoryServiceImpl implements SubCategoryService {

	@Autowired
	SubCategoryDAO subcategoryDAO;

	@Override
	public void saveSubCategory(SubCategoryVO subcategoryVO) {
		this.subcategoryDAO.saveSubCategory(subcategoryVO);
	}

	@Override
	public List searchSubCategory() {
		return this.subcategoryDAO.searchSubCategory();

	}

	@Override
	public List deleteSubCategory(SubCategoryVO subcategoryVO) {
		return this.subcategoryDAO.deleteSubCategory(subcategoryVO);
	}

	@Override
	public List editSubCategory(SubCategoryVO subcategoryVO) {
		return this.subcategoryDAO.editSubCategory(subcategoryVO);

	}

}
