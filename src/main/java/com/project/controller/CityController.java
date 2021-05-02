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

import com.project.model.CityVO;
import com.project.service.CityService;
import com.project.service.StateService;

@Controller
public class CityController {
	

	@Autowired
	CityService cityService;
		
	@Autowired
	StateService stateService;
	
	@RequestMapping(value = "admin/addCity", method = RequestMethod.GET)
	public ModelAndView addCity() {

		List<CityVO> stateList=this.stateService.searchState();
		return new ModelAndView("admin/addCity","cityVO",new CityVO()).addObject("stateList",stateList);

	}
	@RequestMapping(value = "admin/viewCity", method = RequestMethod.GET)
	public ModelAndView viewCity() {

		List<CityVO> cityList=this.cityService.searchCity();
		return new ModelAndView("admin/viewCity","cityList",cityList);

	}
	@RequestMapping(value = "admin/saveCity", method = RequestMethod.POST) 
	public ModelAndView saveCity(@ModelAttribute CityVO cityVO) {

		this.cityService.saveCity(cityVO);

		return new ModelAndView("redirect:addCity");
	}
	
	@GetMapping(value = "admin/deleteCity")
	public ModelAndView deleteCity(@ModelAttribute CityVO cityVO, @RequestParam int id) {
       
		cityVO.setId(id);
		
		System.out.println(cityVO.getId());
		
		List cityList = this.cityService.deleteCity(cityVO);
		
		CityVO cityVO2 = (CityVO)cityList.get(0);
		cityVO2.setStatus(false);
        cityService.saveCity(cityVO2);
		
        return new ModelAndView("redirect:viewCity");
	}

	
	@GetMapping(value = "admin/editCity")
	public ModelAndView editCity(@ModelAttribute CityVO cityVO, @RequestParam int id) {
       
		cityVO.setId(id);
		
		System.out.println(cityVO.getId());
		
		
		List cityList = this.cityService.deleteCity(cityVO);
		List<CityVO> stateList=this.stateService.searchState();
		
        return new ModelAndView("admin/addCity","cityVO",cityList.get(0)).addObject("stateList", stateList);
	}
}
