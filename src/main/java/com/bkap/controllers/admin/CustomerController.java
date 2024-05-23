package com.bkap.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.bkap.dao.AccountDao;

@Controller
@RequestMapping("admin/customer")
public class CustomerController {
	
	@Autowired
	AccountDao accountDao;
	
	@GetMapping("list")
	public String listCus(Model model) {
		model.addAttribute("page", "customer/list");
		model.addAttribute("accounts", accountDao.getAll());
		return "admin";
	}
	
	@GetMapping("detail/{id}")
	public String detailCus(@PathVariable("id") Integer id,Model model) {
		model.addAttribute("page", "customer/detail");
		var account = accountDao.getById(id);
		model.addAttribute("account", account);
		
		return "admin";
	}

}
