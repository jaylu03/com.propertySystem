package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.project.model.SubCategoryVO;
import com.project.service.CategoryService;
import com.project.service.SubCategoryService;



@Controller
public class SubCategoryController {
	
	@Autowired
	SubCategoryService subcategoryService;
	
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value = "admin/addSubCategory", method = RequestMethod.GET)
	public ModelAndView addSubCategory() {
		
		List<SubCategoryVO> categoryList=this.categoryService.searchCategory();

		return new ModelAndView("admin/addSubCategory","subCategoryVO",new SubCategoryVO()).addObject("categoryList",categoryList);

	}
	@GetMapping(value = "admin/viewSubCategory")
	public ModelAndView viewSubCategory() {
		
		List<SubCategoryVO> subCategoryList=this.subcategoryService.searchSubCategory();
		
		for (SubCategoryVO subCategoryVO : subCategoryList) {
			System.out.println(subCategoryVO.getSubCategoryName());
		}
		
		return new ModelAndView("admin/viewSubCategory","subCategoryList",subCategoryList);

	}
	@RequestMapping(value = "admin/saveSubCategory", method = RequestMethod.POST) 
	public ModelAndView saveSubCategory(@ModelAttribute SubCategoryVO subcategoryVO) {

		this.subcategoryService.saveSubCategory(subcategoryVO);

		return new ModelAndView("redirect:addSubCategory");
	}
	
	@GetMapping(value = "admin/deleteSubCategory")
	public ModelAndView deleteSubCategory(@ModelAttribute SubCategoryVO subCategoryVO, @RequestParam int id) {
       
		subCategoryVO.setId(id);
		
		System.out.println(subCategoryVO.getId());
		
		
		List subCategoryList = this.subcategoryService.deleteSubCategory(subCategoryVO);
		
		SubCategoryVO subCategoryVO2 = (SubCategoryVO)subCategoryList.get(0);
		subCategoryVO2.setStatus(false);
        subcategoryService.saveSubCategory(subCategoryVO2);
		
        return new ModelAndView("redirect:viewSubCategory");
	}
	
	
	
	@GetMapping(value = "admin/editSubCategory")
	public ModelAndView editSubCategory(@ModelAttribute SubCategoryVO subCategoryVO, @RequestParam int id) {
       
		subCategoryVO.setId(id);
		
		System.out.println(subCategoryVO.getId());
		
		
		List subCategoryList = this.subcategoryService.deleteSubCategory(subCategoryVO);
		List<SubCategoryVO> categoryList=this.categoryService.searchCategory();

		
        return new ModelAndView("admin/addSubCategory","subCategoryVO",subCategoryList.get(0)).addObject("categoryList",categoryList);
	}
	
}
