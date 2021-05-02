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
import com.project.model.StateVO;
import com.project.service.StateService;

@Controller
public class StateController {
	
	@Autowired
	StateService stateService;
	
	@RequestMapping(value = "admin/addState", method = RequestMethod.GET)
	public ModelAndView addState() {

		return new ModelAndView("admin/addState","StateVO", new StateVO());

	}
	@RequestMapping(value = "admin/viewState", method = RequestMethod.GET)
	public ModelAndView viewState() {

		List<StateVO> stateList = stateService.searchState();
		return new ModelAndView("admin/viewState","stateList",stateList);

	}
	@PostMapping(value = "admin/saveState")
	public ModelAndView saveState(@ModelAttribute StateVO stateVO) {

		this.stateService.saveState(stateVO);

		return new ModelAndView("redirect:addState");
	}
	
	@GetMapping(value = "admin/deleteState")
	public ModelAndView deleteState(StateVO stateVO, @RequestParam int id) {
       
		stateVO.setId(id);
		
		System.out.println(stateVO.getId());
		
		
		List stateList = stateService.deleteState(stateVO);
		
		StateVO stateVO2 = (StateVO)stateList.get(0);
		stateVO2.setStatus(false);
		stateService.saveState(stateVO2);
		
        return new ModelAndView("redirect:viewState");
	}
	
	
	@GetMapping(value = "admin/editState")
	public ModelAndView editState(StateVO stateVO, @RequestParam int id) {
       
		stateVO.setId(id);
		
		System.out.println(stateVO.getId());
		
		
		List stateList = stateService.deleteState(stateVO);
		
        return new ModelAndView("admin/addState","StateVO",stateList.get(0));
	}
}
