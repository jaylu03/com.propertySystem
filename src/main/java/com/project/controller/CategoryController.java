package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CategoryVO;
import com.project.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	CategoryService categoryService;

	@RequestMapping(value = "admin/addCategory", method = RequestMethod.GET)
	public ModelAndView addCategory(@ModelAttribute CategoryVO categoryVO) {

		
		return new ModelAndView("admin/addCategory", "CategoryVO", new CategoryVO());

	}

	@RequestMapping(value = "admin/viewCategory", method = RequestMethod.GET)
	public ModelAndView viewCategory() {

		
		List<CategoryVO> searchList = categoryService.searchCategory();
		return new ModelAndView("admin/viewCategory","searchList",searchList);

	}

	@PostMapping(value = "admin/saveCategory")
	public ModelAndView saveCategory(@ModelAttribute CategoryVO categoryVO) {
		categoryVO.setStatus(true);
		this.categoryService.saveCategory(categoryVO);

		return new ModelAndView("redirect:addCategory");
	}

	@GetMapping(value = "admin/deleteCategory")
	public ModelAndView deleteCategory(CategoryVO categoryVO, @RequestParam int id) {
       
		categoryVO.setId(id);
		
		System.out.println(categoryVO.getId());
		
		List categoryList = categoryService.deleteCategory(categoryVO);
		
		CategoryVO categoryVO2 = (CategoryVO)categoryList.get(0);
		categoryVO2.setStatus(false);
        categoryService.saveCategory(categoryVO2);
		
        return new ModelAndView("redirect:viewCategory");
	}
	
	
	
	@GetMapping(value = "admin/editCategory")
	public ModelAndView editCategory(CategoryVO categoryVO, @RequestParam int id) {
       
		categoryVO.setId(id);
		
		System.out.println(categoryVO.getId());
		
		
		List categoryList = categoryService.deleteCategory(categoryVO);
        
        return new ModelAndView("admin/addCategory","CategoryVO",categoryList.get(0));
	}
	
	

}
