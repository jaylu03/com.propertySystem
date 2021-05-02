package com.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
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

import com.project.model.AreaVO;
import com.project.model.ComplainVO;
import com.project.model.LoginVO;
import com.project.service.ComplainService;
import com.project.service.LoginService;
import com.project.utils.Basemethods;

@Controller
public class ComplainController {

	@Autowired
	private ComplainService complainService;

	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "user/complain", method = RequestMethod.GET)
	public ModelAndView loadComplain(@ModelAttribute ComplainVO complainVO) {

		String username = Basemethods.getUser();
		List loginList = loginService.searchLoginByUsername(username);
		LoginVO loginVO = (LoginVO) loginList.get(0);

		List complainList = this.complainService.searchComplainByUserId(loginVO.getId());

		return new ModelAndView("user/complain", "ComplainVO", new ComplainVO()).addObject("complainList",
				complainList);

	}

	@PostMapping(value = "user/saveComplain")
	public ModelAndView saveComplain(@ModelAttribute ComplainVO complainVO) {
		// complainVO.setStatus(true);

		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		String date = format.format(new Date());

		String username = Basemethods.getUser();
		List loginList = loginService.searchLoginByUsername(username);
		LoginVO loginVO = (LoginVO) loginList.get(0);

		complainVO.setLoginVO(loginVO);
		complainVO.setStatus(true);
		complainVO.setComplainDate(date);
		complainVO.setComplainStatus("Pending");

		this.complainService.saveComplain(complainVO);

		return new ModelAndView("redirect:complain");
	}

	@GetMapping(value = "admin/viewComplain")
	public ModelAndView viewComplain() {

		List<ComplainVO> complainList = this.complainService.searchComplain();

		return new ModelAndView("admin/viewComplain", "complainList", complainList);

	}

	@GetMapping(value = "admin/getReplyById")
	public ModelAndView getReplyById(@ModelAttribute ComplainVO complainVO, @RequestParam int id) {

		complainVO.setId(id);

		System.out.println(complainVO.getId());

		List complainList = this.complainService.getReplyById(id);

		return new ModelAndView("admin/reply", "complainVO", complainList.get(0));

	}

	@PostMapping(value = "admin/reply")
	public ModelAndView reply(@ModelAttribute ComplainVO complainVO) {

		SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
		String date = format.format(new Date());
		complainVO.setReplyDate(date);
		complainVO.setComplainStatus("Resolved");
		this.complainService.saveComplain(complainVO);

		return new ModelAndView("redirect:viewComplain");
	}
}
