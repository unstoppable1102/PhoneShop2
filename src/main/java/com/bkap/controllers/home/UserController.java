package com.bkap.controllers.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.bkap.dao.AccountImpl;
import com.bkap.dao.ProductDao;
import com.bkap.entities.Account;
import com.bkap.util.Cipher;

@Controller
public class UserController {
	@Autowired
	AccountImpl accountService;
	
	@Autowired
	ProductDao productDao;
	
	
	//GET: dang-nhap "hiển thị màn hình đăng nhập"
		@GetMapping("login")
		public String login() {
			return "home/login";
		}
		//POST: dang-nhap (xử lý đăng nhập)
		@PostMapping(value = "login")
		public String loginProcess(String username, String password, Model model, HttpServletRequest req) {
			Account acc = accountService.getAccount(username);
			String passMd5 = Cipher.GenerateMD5(password);
			if (acc == null || !acc.getPassword().equals(passMd5)) {
				model.addAttribute("msg", "Thông tin đăng nhập sai");
				return "home/login";
			}
			HttpSession session = req.getSession();
			session.setMaxInactiveInterval(3600);
			session.setAttribute("userid", acc.getId());
			session.setAttribute("picture", acc.getPicture());
			session.setAttribute("address", acc.getAddress());
			session.setAttribute("phone", acc.getPhone());
			session.setAttribute("fullname", acc.getFullName());
			return "redirect:/";
		}
		//GET: thoat 
		@GetMapping("logout")
		public String logout(Model model, HttpServletRequest req) {
			HttpSession session = req.getSession();
			session.invalidate();
			return "redirect:/";
		}
		
		//GET: dang-ký 
			@GetMapping("register")
			public String userRegister(Model model) {
				model.addAttribute("account", new Account());
				return "home/register";
			}
			
			//Post: đăng ký
			@PostMapping(value="save")
			public String accountSave(@ModelAttribute("account") Account account, Model model) {
				if(accountService.isUsernameExists(account.getUsername())) {
					 model.addAttribute("error", "Tài khoản đã tồn tại");
			         return "home/register";
				}else {
					String password = Cipher.GenerateMD5(account.getPassword());
					account.setPassword(password);
					account.setRole(false);
					account.setStatus(true);
					accountService.add(account);
					
					return "redirect:/login";
				}
			}
			
			
}
