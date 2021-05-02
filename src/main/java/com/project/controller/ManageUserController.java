/*package com.project.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CategoryVO;

@Controller
public class ManageUserController {

	@GetMapping(value = "admin/viewUsers")
	public ModelAndView Load() {
		System.out.println("controller");
		return new ModelAndView("admin/viewUsers");
	}
	
	@GetMapping(value = "deleteCategory")
	public ModelAndView deleteCategory(CategoryVO categoryVO, @RequestParam int id) {
       
		categoryVO.setId(id);
		
		System.out.println(categoryVO.getId());
		
		
		List categoryList = categoryService.deleteCategory(categoryVO);
		
		CategoryVO categoryVO2 = (CategoryVO)categoryList.get(0);
		categoryVO2.setStatus(false);
        categoryService.saveCategory(categoryVO2);
		
        return new ModelAndView("redirect:viewCategory");
	}
}
*/