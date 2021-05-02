package com.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class predictionController {
	
	@RequestMapping(value = "user/loadDetection")
	public ModelAndView loadDetection() {
		return new ModelAndView("user/Prediction");
	}

	
}
