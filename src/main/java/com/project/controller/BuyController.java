package com.project.controller;

import java.awt.Dialog.ModalExclusionType;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.PropertyVO;
import com.project.service.AreaService;
import com.project.service.CityService;
import com.project.service.PropertyService;
import com.project.service.StateService;

@Controller
public class BuyController {

	@Autowired
	AreaService areaService;

	@Autowired
	CityService cityService;

	@Autowired
	StateService stateService;

	@Autowired
	PropertyService propertyService;

	@GetMapping(value = "user/loadBuy")
	public ModelAndView loadBuy() {

		List<PropertyVO> stateList = this.stateService.searchState();
		List<PropertyVO> cityList = this.cityService.searchCity();
		List<PropertyVO> areaList = this.areaService.searchArea();
		
		List propertyImageList = propertyService.searchPropertyImage();

		return new ModelAndView("user/buy","stateList", stateList)
				.addObject("cityList", cityList).addObject("areaList", areaList).addObject("propertyImageList",propertyImageList);

	}
	
	@PostMapping(value = "user/getProperty")
	public ModelAndView getProperty(@RequestParam("stateId") int stateId,@RequestParam("cityId") int cityId,@RequestParam("areaId") int areaId) {

		List propertyImageList = propertyService.searchByCityStateArea(stateId,cityId,areaId);
		List<PropertyVO> stateList = this.stateService.searchState();
		List<PropertyVO> cityList = this.cityService.searchCity(); 
		List<PropertyVO> areaList = this.areaService.searchArea();

		return new ModelAndView("user/buy","stateList", stateList)
				.addObject("cityList", cityList).addObject("areaList", areaList).addObject("propertyImageList",propertyImageList);

	}
	
	@GetMapping(value = "user/propertiesDetails")
	public ModelAndView propertiesDetails(@RequestParam("id") int id,Model model) {
		System.out.println("id"+id);
		List propertyImageList = propertyService.searchPropertyImageById(id);

		if(propertyImageList.size()>0)
		{
			model.addAttribute("propertyData", propertyImageList.get(0));
		}
		System.out.println("List Size of propertyImageList::::::::::::::::"+propertyImageList.size());
		
		return new ModelAndView("user/propertyDetail","propertyImageList", propertyImageList);

	}
}
