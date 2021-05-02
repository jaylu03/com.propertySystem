package com.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.LoginVO;
import com.project.model.OTPTable;
import com.project.service.LoginService;
import com.project.service.OTPService;
import com.project.service.RegisterService;
import com.project.utils.Basemethods;

@Controller
public class LoginController {

	@Autowired
	private RegisterService registerService;
	
	@Autowired
	LoginService loginService;
	
	@Autowired
	private OTPService otpService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loadLogin() {

		return new ModelAndView("index");
	}

	
	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public ModelAndView adminIndex() {

		return new ModelAndView("admin/index");
	}
	
	@RequestMapping(value = "/user/index", method = RequestMethod.GET)
	public ModelAndView userIndex() {

		return new ModelAndView("user/index");
	}
	@RequestMapping(value = "/logout", method = {RequestMethod.POST, RequestMethod.GET})	
	public String viewUserDetails(ModelMap model,HttpServletResponse response,HttpServletRequest request) {

		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null) {
	            new SecurityContextLogoutHandler().logout(request, response, auth);
	            request.getSession().invalidate();
	            request.getSession().setAttribute("tempStatus", "success");
	            request.getSession().setAttribute("statusText", "Logout Successfully!");
	}
	        return "login";
	        }
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load(@ModelAttribute LoginVO loginVO) {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {

		return new ModelAndView("login");
	}
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public ModelAndView loadError() {

		return new ModelAndView("login");
	}
	
	@GetMapping(value = "/forgetpassword")
	public ModelAndView forgetpassword() {
		return new ModelAndView("forgetpassword");
	}
	
	@RequestMapping(value = "/OTPPage", method = RequestMethod.GET)
	public ModelAndView OTPPage() {
		return new ModelAndView("OTPPage");
	}
	
	@RequestMapping(value = "/verifyEmail", method = RequestMethod.GET)
	public ResponseEntity verifyEmail(@RequestParam("emailId") String emailId,HttpSession session) {
		
		System.out.println("email: "+emailId);
		session.setAttribute("user", emailId);
		List ls = this.loginService.verifyEmail(emailId);

		boolean status;
		if (ls.size() > 0) {
			session.setAttribute("user", emailId);
			status = true;
		} else {
			status = false;
		}
		
		System.out.println("verifyEmails successfully....");
		return new ResponseEntity(status, HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "/sendOTP", method = RequestMethod.GET)
	public ResponseEntity sendOTP(@RequestParam String forgetpassword) {
		
		System.out.println(forgetpassword);
		final String otp = Basemethods.generateOTP();
		Basemethods.sendMail(forgetpassword, otp);
		final String token = Basemethods.generateToken();

		System.out.println(token);
		System.out.println(otp);

		List ls = this.otpService.getByEmail(forgetpassword);

		OTPTable otpTable = new OTPTable();
		
		if(ls != null && !ls.isEmpty()){
			otpTable = (OTPTable) ls.get(0);

			otpTable.setOtp(otp);
			otpTable.setToken(token);
			otpTable.setEmail(forgetpassword);
		}else{
			otpTable.setOtp(otp);
			otpTable.setToken(token);
			otpTable.setEmail(forgetpassword);
		}
		this.otpService.saveOTPTable(otpTable);
		

		System.out.println("sendOTP Successfully....");
		
		return new ResponseEntity(otpTable, HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "/verifyOTP", method = RequestMethod.POST)
	public ModelAndView verifyOTP(@RequestParam String token,@RequestParam String email,@RequestParam String otp,HttpSession session) {
		
		
		System.out.println("In verify OTP Method:::::::::::::::::::::::::::::");
		
		OTPTable otpTable = new OTPTable();
		
		
		
		otpTable.setEmail(email);
		otpTable.setOtp(otp);
		otpTable.setToken(token);

		List ls = this.otpService.verifyOTP(otpTable);

		if(ls != null && !ls.isEmpty()){
			
			final String password = Basemethods.generateToken();
			String userName=(String) session.getAttribute("user");
			System.out.println(userName);
			
			// Basemethods.getUser();//
			
			List<LoginVO> loginList = this.loginService.searchLoginByUsername(userName);
			
			LoginVO loginVO = loginList.get(0);
			
			/*loginVO.setPassword(password);*/
			
			this.loginService.saveLogin(loginVO);
			
			Basemethods.sendPassword(email, password);
			return new ModelAndView("resetPassword","LoginVO", new LoginVO() );	
		}else{
			return new ModelAndView("redirect:forgetpassword");	
		}
		
	}
	
	@RequestMapping(value = "/updatePassword", method = RequestMethod.GET)
	/*public ModelAndView updatePassword(@RequestParam String password,HttpSession session) {*/
	public ResponseEntity updatePassword(@RequestParam("password") String password,HttpSession session) {
		
		System.out.println("password: "+password);
		String userName=(String) session.getAttribute("user");
		System.out.println("///////////////////"+userName);
		
		List<LoginVO> loginList = this.loginService.searchLoginByUsername(userName);
		LoginVO loginVO = loginList.get(0);
		
		loginVO.setPassword(password);
		this.loginService.saveLogin(loginVO);

		return new ResponseEntity(true,HttpStatus.OK);
		/*return new ModelAndView("login");*/
	}
	
	
	
}