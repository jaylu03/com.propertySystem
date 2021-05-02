package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.AreaVO;
import com.project.service.AreaService;
import com.project.service.CityService;
import com.project.service.StateService;

@Controller
public class AreaController {

	@Autowired
	AreaService areaService;
	
	@Autowired
	CityService cityService;
		
	@Autowired
	StateService stateService;
	
	@GetMapping(value = "admin/addArea")
	public ModelAndView addArea() {

		List<AreaVO> stateList=this.stateService.searchState();
		List<AreaVO> cityList=this.cityService.searchCity();
		return new ModelAndView("admin/addArea","areaVO",new AreaVO()).addObject("stateList", stateList).addObject("cityList", cityList);

	}
	@GetMapping(value = "admin/viewArea")
	public ModelAndView viewArea() {
		
		List<AreaVO> areaList=this.areaService.searchArea();
		return new ModelAndView("admin/viewArea","areaList",areaList);

	}
	@PostMapping(value = "admin/saveArea") 
	public ModelAndView saveArea(@ModelAttribute AreaVO areaVO) {

		this.areaService.saveArea(areaVO);

		return new ModelAndView("redirect:addArea");
	}
	
	@GetMapping(value = "admin/deleteArea")
	public ModelAndView deleteArea(@ModelAttribute AreaVO areaVO, @RequestParam int id) {
       
		areaVO.setId(id);
		
		System.out.println(areaVO.getId());
		
		
		List areaList = this.areaService.deleteArea(areaVO);
		
		AreaVO areaVO2 = new AreaVO();
		areaVO2=(AreaVO) areaList.get(0);
		areaVO2.setStatus(false);
        areaService.saveArea(areaVO2);
		
        return new ModelAndView("redirect:viewArea");
	}
	
	@GetMapping(value = "admin/editArea")
	public ModelAndView editArea(@ModelAttribute AreaVO areaVO, @RequestParam int id) {
       
		areaVO.setId(id);
		
		System.out.println(areaVO.getId());
		
		List areaList = this.areaService.deleteArea(areaVO);
		List<AreaVO> stateList=this.stateService.searchState();
		List<AreaVO> cityList=this.cityService.searchCity();
		
		
        return new ModelAndView("admin/addArea","areaVO",areaList.get(0)).addObject("stateList", stateList).addObject("cityList", cityList);
	}
}
