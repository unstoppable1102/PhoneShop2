package com.bkap.controllers.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bkap.dao.CategoryDao;
import com.bkap.dao.ProductDao;
import com.bkap.entities.Category;

@Controller
@RequestMapping("admin/category")
public class CategoryController {
	
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	ProductDao productDao;
	
	@GetMapping("list")
	public String index(Model model) {
		model.addAttribute("categories", categoryDao.getAll());
		model.addAttribute("page", "category/list");
		return "admin";
	}
	
	
	@GetMapping("add")
	public String addCate(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("page", "category/add");
		return "admin";
	}
	
	@PostMapping("save")
	public String saveCate(@Valid @ModelAttribute("category") Category category, BindingResult result, @RequestParam("file") MultipartFile file, Model model, HttpServletRequest req) {
		//upload 1 ảnh
		if(result.hasErrors()) {
			model.addAttribute("page", "category/add");
			model.addAttribute("category", category);
			return "admin";
		}else {
			if(file != null && !file.isEmpty()) {
				String uploadRootPath = req.getServletContext().getRealPath("resources/images");
				File f = new File(uploadRootPath);
				File destination = new File(f.getAbsolutePath()+"/"+file.getOriginalFilename());
				
				try {

					file.transferTo(destination);

				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
				category.setImage(file.getOriginalFilename());
				categoryDao.add(category);
			}
			return "redirect:/admin/category/list";
		}
	}
	
	
	@GetMapping(value="edit")
	public String editCate(@RequestParam("id") int id, Model model) {
		var category = categoryDao.getById(id);
		model.addAttribute("category", category);
		model.addAttribute("page", "category/edit");
		return "admin";
	}

	
	@PostMapping(value="update")
	public String updateCate(@ModelAttribute("category") Category category, Model model,
			@RequestParam(value="file", required = false) MultipartFile file,
			HttpServletRequest req) {
		if(file != null && !file.isEmpty()) {
			// nếu tải tệp mới
			String UploadRootPath = req.getServletContext().getRealPath("images");
			String imageUploadPath = UploadRootPath+"/"+file.getOriginalFilename();
		
			try {
				//Lưu ảnh tệp mới
				File destination = new File(imageUploadPath);
				file.transferTo(destination);
				//Cập nhật đường dẫn ảnh mới vào category
				category.setImage(file.getOriginalFilename());
			} catch (Exception e) {
				model.addAttribute("error",e.getMessage());
				model.addAttribute("category", category);
				model.addAttribute("page", "category/edit");
				return "admin";
			}
		
		}else {
			var categoryOld = categoryDao.getById(category.getId());
			category.setImage(categoryOld.getImage());
		}
		categoryDao.update(category);
		return "redirect:/admin/category/list";
	}
	
	@GetMapping("delete")
	public String deleteCate(@RequestParam("id") int id, Model model ) {
		
		if( productDao.getByCategory(id) != null) {
			model.addAttribute("msg", "Không thể xoá danh mục khi có sản phẩm");
			model.addAttribute("categories", categoryDao.getAll());
			model.addAttribute("page", "category/list");
			return"admin";
		} 
			categoryDao.delete(id);
		
		return "redirect:/admin/category/list";
	}
}
