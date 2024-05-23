package com.bkap.controllers.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bkap.dao.AccountImpl;
import com.bkap.entities.Account;
import com.bkap.util.Cipher;

@Controller
@RequestMapping(value="admin")
public class AdminController {
	
	@Autowired
	AccountImpl accountService;
	
	@GetMapping(value="")
	public String admin(Model model) {
		model.addAttribute("page", "index");
		return "admin";
	}
	
	
	@GetMapping("login")
	public String adminLogin(Model model) {
		return "/admin/login";
	}
	
	@GetMapping("sign-up")
	public String adminSignUp(Model model) {
		return "/admin/signup";
	}
	
	//POST: admin/login (xử lý login)
	@PostMapping(value = "login")
	public String loginProcess(String username, String password, Model model, HttpServletRequest req) {
		Account acc = accountService.getAccount(username);
		String passMd5 = Cipher.GenerateMD5(password); 
		if (acc == null || !acc.getPassword().equals(passMd5) || !acc.isRole()) {
			model.addAttribute("msg", "Thông tin đăng nhập sai hoặc bạn không có quyền!");
			return "admin/login";
		}
		HttpSession session = req.getSession();
		session.setMaxInactiveInterval(3600);
		session.setAttribute("adminid", acc.getId());
		session.setAttribute("adminemail", acc.getEmail());
		session.setAttribute("adminpicture", acc.getPicture());
		session.setAttribute("adminfullname", acc.getFullName());
		return "redirect:/admin";
	}
	//GET: admin/logout
	@RequestMapping(value = "logout")
	public String logout(Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:/admin/login";
	}
	
	
	
	@GetMapping(value="crm/dashboard")
	public String crmDashboard(Model model) {
		model.addAttribute("page", "crm/dashboard");
		return "admin";
	}
	
	
	@GetMapping(value="crm/mail")
	public String crmMail(Model model) {
		model.addAttribute("page", "crm/mail");
		return "admin";
	}
	
	@GetMapping(value="sales/dashboard")
	public String salesDashboard(Model model) {
		model.addAttribute("page", "sales/dashboard");
		return "admin";
	}
	
}
