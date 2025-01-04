package com.telusko.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.telusko.demo.dao.LoginRepo;
import com.telusko.demo.dao.SignUpRepo;
import com.telusko.demo.model.BankUsers;
import com.telusko.demo.model.Login;

import jakarta.servlet.http.HttpSession;

@Controller
public class SignUpController {
	@Autowired
	SignUpRepo signuprepo;
	@Autowired
	LoginRepo loginrepo;
	@RequestMapping("/signup")
	public String UserSignUp(BankUsers bankuser,HttpSession session) {
		signuprepo.save(bankuser);
		Login login=new Login();
		login.setCardNo(bankuser.getCardNo());
		login.setPin(bankuser.getPin());
		session.setAttribute("loggedInUser", bankuser.getCardNo());
		loginrepo.save(login);
		return "dashboard";
		
		
	}
	

}
