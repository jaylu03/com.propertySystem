package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CityVO;
import com.project.model.ComplainVO;
import com.project.model.FeedbackVO;
import com.project.model.LoginVO;
import com.project.service.FeedbackService;
import com.project.service.LoginService;
import com.project.utils.Basemethods;

@Controller
public class FeedbackController {
	

	@Autowired
	FeedbackService feedbackService;
	
	@Autowired
	private LoginService loginService;
	
	@GetMapping(value = "user/feedback")
	public ModelAndView loadFeedback(@ModelAttribute FeedbackVO feedbackVO) {
		
		List<FeedbackVO> feedbackList = this.feedbackService.searchFeedback();

		return new ModelAndView("user/feedback","feedbackVO", new FeedbackVO()).addObject("feedbackList", feedbackList);

	}
	
	@PostMapping(value = "user/saveFeedback")
	public ModelAndView saveFeedback(@ModelAttribute FeedbackVO feedbackVO) {

		String username = Basemethods.getUser();
		List loginList = loginService.searchLoginByUsername(username);
		LoginVO loginVO = (LoginVO) loginList.get(0);
		
		feedbackVO.setLoginVO(loginVO);
		feedbackVO.setStatus(true);
		this.feedbackService.saveFeedback(feedbackVO);

		return new ModelAndView("redirect:feedback");
	}
	
	@GetMapping(value = "admin/viewFeedback")
	public ModelAndView viewFeedback() {

		List<FeedbackVO> feedbackList = this.feedbackService.searchFeedback();

		return new ModelAndView("admin/viewFeedback", "feedbackList", feedbackList);

	}
	
	@GetMapping(value = "user/userViewfeedback")
	public ModelAndView userViewfeedback() {

		List<FeedbackVO> feedbackList = this.feedbackService.searchFeedback();

		return new ModelAndView("user/feedback", "feedbackList", feedbackList);

	}
	
	@GetMapping(value = "admin/deleteFeedback")
	public ModelAndView deleteFeedback(@ModelAttribute FeedbackVO feedbackVO, @RequestParam int id) {
       
		feedbackVO.setId(id);
		
		System.out.println(feedbackVO.getId());
		
		
		List feedbackList = this.feedbackService.deleteFeedback(feedbackVO);
		
		FeedbackVO feedbackVO2 = (FeedbackVO)feedbackList.get(0);
		feedbackVO2.setStatus(false);
		feedbackService.saveFeedback(feedbackVO2);
		
        return new ModelAndView("redirect:viewFeedback");
	}
}
