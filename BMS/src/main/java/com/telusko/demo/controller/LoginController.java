package com.telusko.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.telusko.demo.dao.LoginRepo;
import com.telusko.demo.model.Login;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {
	
	@Autowired
	LoginRepo repo;
	@RequestMapping("/atm")
	public String DisplayLogin() {
		return "login";
	}
	@RequestMapping("/login")
	public String UserLogin(Login login,HttpSession session) {
		
		if (repo.existsByCardNo(login.getCardNo())){
			session.setAttribute("loggedInUser", login.getCardNo());
			return "dashboard";
			
		}else {
			return "signup";
		}

		
	}
	

}
