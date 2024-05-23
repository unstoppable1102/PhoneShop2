package com.bkap.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin/project")
public class ProjectController {

	
	@GetMapping("dashboard")
	public String projectDashboard(Model model) {
		model.addAttribute("page", "project/dashboard");
		  return "admin";
	}
	
	
	@GetMapping("list")
	public String projectList(Model model) {
		model.addAttribute("page", "project/list");
		  return "admin";
	}
	
	@GetMapping("scrum-board")
	public String projectScrumBoard( Model model) {
		model.addAttribute("page", "project/scrum-board");
		return "admin";
	}
	
	
	@GetMapping("issue")
	public String projectIssue( Model model) {
		model.addAttribute("page", "project/issue");
		return "admin";
	}
}
