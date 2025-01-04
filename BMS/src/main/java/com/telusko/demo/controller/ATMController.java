package com.telusko.demo.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.telusko.demo.dao.LoginRepo;
import com.telusko.demo.dao.SignUpRepo;
import com.telusko.demo.model.BankUsers;
import com.telusko.demo.model.Login;

import jakarta.servlet.http.HttpSession;

@Controller
public class ATMController {
	
	
	@Autowired
	private SignUpRepo bankUsersRepo;
	@Autowired
	private LoginRepo loginRepo;

    @RequestMapping("/dashboard")
    public String dashboard() {
        return "dashboard"; // Displays the dashboard page
    }

    @RequestMapping("/deposit")
    public String deposit() {
        return "deposit"; // Deposit page
    }

    @RequestMapping("/pinChange")
    public String pinChange() {
        return "pinChange"; // Pin change page
    }

    @RequestMapping("/balanceInquiry")
    public String balanceInquiry(HttpSession session) {
    	Long userCardNo=(Long)session.getAttribute("loggedInUser");
    	BankUsers user=bankUsersRepo.getByCardNo(userCardNo);
    	BigDecimal balanceAmount=user.getAccountBalance();
    	String lastUpdated = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    	session.setAttribute("lastUpdated", lastUpdated);
    	session.setAttribute("balanceAmount", balanceAmount);
        return "balanceInquiry"; // Balance inquiry page
    }

    @RequestMapping("/cashWithdrawal")
    public String cashWithdrawal() {
        return "cashWithdrawal"; // Cash withdrawal page
    }

    @RequestMapping("/fastCash")
    public String fastCash() {
        return "fastCash"; // Fast cash page
    }

    @RequestMapping("/exit")
    public String exit(HttpSession session) {
    	session.invalidate();
        return "login"; // Exit page or redirect to logout
    }
    @RequestMapping("/processDeposit")
    public String deposit(BigDecimal amount,HttpSession session)
    {
    	Long userCardNo=(Long)session.getAttribute("loggedInUser");
    	if (userCardNo == null) {
            return "loginError"; // If no user is logged in, redirect to the login error page
        }

        // Find the user's details in the BankUsers table
        BankUsers user = bankUsersRepo.getByCardNo(userCardNo);

        if (user != null) {
            // Add the deposit amount to the current balance
        	BigDecimal current=user.getAccountBalance();
        	BigDecimal newBalance;
        	if (current==null) {
        		newBalance=amount;
        		
        	}else {
            newBalance = user.getAccountBalance().add(amount);
        	}
            user.setAccountBalance(newBalance);
            bankUsersRepo.save(user); // Save the updated user balance in the database

            return "depositSuccess"; // Redirect to deposit success page
        } else {
            return "errorPage"; // Redirect to error page if user is not found
        }
    
    	
    	
    }
    @RequestMapping("/processPinChange")
    public String pinChange(@RequestParam("oldPin") int oldPin,@RequestParam("newPin") int newPin,HttpSession session) {
    	Long userCardNo=(Long)session.getAttribute("loggedInUser");
    	if (userCardNo==null) {
    		return "errorPage";
    	}else {
    		BankUsers user=bankUsersRepo.getByCardNo(userCardNo);
    		Login user_login=loginRepo.getByCardNo(userCardNo);
    		user_login.setPin(newPin);
    		loginRepo.save(user_login);
    		user.setPin(newPin);
    		bankUsersRepo.save(user);
    		return "pinChangeSuccess";
    		
    		
    	}
    	
    }
    @RequestMapping({"/processCashWithdrawal","/processFastCash"})
    public String processCashWithdrawal(@RequestParam("amount") BigDecimal amount,HttpSession session) {
    	Long userCardNo=(Long)session.getAttribute("loggedInUser");
    	if (userCardNo==null) {
    		return "errorPage";
    	}else {
    		BankUsers user=bankUsersRepo.getByCardNo(userCardNo);
    		BigDecimal balance=user.getAccountBalance();
    		int result=balance.compareTo(amount);
    		if (result==0 || result==1) {
    			balance=balance.subtract(amount);
    			user.setAccountBalance(balance);
    			bankUsersRepo.save(user);
    			session.setAttribute("remainingBalance", balance);
    			session.setAttribute("withdrawnAmount", amount);
    			return "cashWithdrawalSuccess";
    		}else {
    			return "withdrawalFailure";
    		}
    		
    	
    	}
    	
    }
    
}
