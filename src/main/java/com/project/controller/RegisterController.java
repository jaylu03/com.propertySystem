package com.project.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import com.project.model.LoginVO;
import com.project.model.RegisterVO;
import com.project.service.LoginService;
import com.project.service.RegisterService;
import com.project.utils.Basemethods;

@Controller
public class RegisterController {

	@Autowired
	private RegisterService registerService;

	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView loadRegister(@ModelAttribute RegisterVO registerVO) {

		return new ModelAndView("register", "registerVO", new RegisterVO());
	}

	@RequestMapping(value = "admin/viewUsers", method = RequestMethod.GET)
	public ModelAndView viewUsers() {

		
		List<RegisterVO> searchList = this.registerService.searchRegister();
		return new ModelAndView("admin/viewUsers","searchList",searchList);

	}
	
	@PostMapping(value = "saveRegister")
	public ModelAndView saveRegister(@ModelAttribute RegisterVO registerVO,@RequestParam String email ,@RequestParam MultipartFile file,
			HttpSession session) {

		
		
		String path = session.getServletContext().getRealPath("/");
		String filePath = path + "documents\\aadhaarCard\\";

		String fileName = file.getOriginalFilename();

		try {
			byte barr[] = file.getBytes();

			BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(filePath + "/" + fileName));

			bout.write(barr);
			bout.flush();
			bout.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		LoginVO loginVO = registerVO.getLoginVO();
		loginVO.setEnabled("0");
		loginVO.setUsername(email);
		loginVO.setRole("ROLE_USER");
		this.loginService.saveLogin(loginVO);

		registerVO.setFileName(fileName);
		registerVO.setFilePath(filePath);
		
		this.registerService.saveRegister(registerVO);
		
		System.out.println("=============================="+email);
		// MAIL HERE
		Basemethods.sucessfulRegister(email);
	
		
		System.out.println("==============================");

		return new ModelAndView("redirect:register");
	}
	
	
	@GetMapping(value = "admin/searchAadhaarImage")
	public ModelAndView searchAadhaarImage(@RequestParam int id) {

		List searchList = this.registerService.searchAadhaarImage(id);

		return new ModelAndView("admin/viewUsers", "searchList", searchList);
	}
	
	@GetMapping(value = "admin/takeAction")
	public ModelAndView takeAction(@RequestParam int regid,@RequestParam String type,RegisterVO registerVO) {

		List ls = this.registerService.searchRegister(regid);
		
		registerVO = (RegisterVO) ls.get(0);
		LoginVO loginVO = registerVO.getLoginVO();
		String email=loginVO.getUsername();
		
		if(type.equals("accept")){
			
			loginVO.setEnabled("1");
			
			this.loginService.saveLogin(loginVO);
			Basemethods.AcceptReject(email, "accept");
			// Send mail here
		}
		if(type.equals("reject")){
			registerVO.setStatus(false);
			Basemethods.AcceptReject(email, "reject");
									this.registerService.saveRegister(registerVO);
		}

		return new ModelAndView("redirect:viewUsers");
	}
	
	/*public ModelAndView sendRegisterEmail(@RequestParam String toEmail, String body, String subject) {
		
		SimpleMailMessage message = new 
		return ModelAndView();
	}*/
}
