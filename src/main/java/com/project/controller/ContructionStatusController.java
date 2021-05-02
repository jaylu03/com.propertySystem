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
import com.project.model.ConstructionStatusVO;
import com.project.service.ConstructionStatusService;

@Controller
public class ContructionStatusController {

	@Autowired
	ConstructionStatusService constructionStatusService;
	
	@RequestMapping(value = "admin/addConstructionStatus", method = RequestMethod.GET)
	public ModelAndView addConstructionStatus() {

		return new ModelAndView("admin/addConstructionStatus","ConstructionStatusVO",new ConstructionStatusVO());

	}
	@RequestMapping(value = "admin/viewConstructionStatus", method = RequestMethod.GET)
	public ModelAndView viewConstructionStatus() {

		List<ConstructionStatusVO> constructionStatusList = constructionStatusService.searchConstructionStatus();
		return new ModelAndView("admin/viewConstructionStatus","constructionStatusList",constructionStatusList);

	}
	@PostMapping(value = "admin/saveConstructionStatus")
	public ModelAndView saveConstructionStatus(@ModelAttribute ConstructionStatusVO constructionStatusVO) {

		this.constructionStatusService.saveConstructionStatus(constructionStatusVO);

		return new ModelAndView("redirect:addConstructionStatus");
	}
	
	@GetMapping(value = "admin/deleteConstructionStatus")
	public ModelAndView deleteConstructionStatus(ConstructionStatusVO constructionStatusVO, @RequestParam int id) {
       
		constructionStatusVO.setId(id);
		
		System.out.println(constructionStatusVO.getId());
		
		
		List constructionList = constructionStatusService.deleteConstructionStatus(constructionStatusVO);
		
		ConstructionStatusVO constructionStatusVO2 = (ConstructionStatusVO)constructionList.get(0);
		constructionStatusVO2.setStatus(false);
        constructionStatusService.saveConstructionStatus(constructionStatusVO2);
		
        return new ModelAndView("redirect:viewConstructionStatus");
	}
	
	
	
	@GetMapping(value = "admin/editConstructionStatus")
	public ModelAndView editConstructionStatus(ConstructionStatusVO constructionStatusVO, @RequestParam int id) {
       
		constructionStatusVO.setId(id);
		
		System.out.println(constructionStatusVO.getId());
		
		List constructionList = constructionStatusService.editConstructionStatus(constructionStatusVO);
	
        return new ModelAndView("admin/addConstructionStatus","ConstructionStatusVO",constructionList.get(0));
	}
	
}
