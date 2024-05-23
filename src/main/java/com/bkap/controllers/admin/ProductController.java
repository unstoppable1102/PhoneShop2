package com.bkap.controllers.admin;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bkap.dao.CategoryDao;
import com.bkap.dao.ProductDao;
import com.bkap.entities.Product;
import com.bkap.entities.ProductPage;

@Controller
@RequestMapping("/admin/product")
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	CategoryDao categoryDao;
	
	
	@RequestMapping(value="list")
	public String productList(Integer cateid, Integer pageno, Model model) {
		
		model.addAttribute("page", "product/list");
		cateid = cateid == null? 0 : cateid;
		pageno = pageno == null ? 1 : pageno;
		model.addAttribute("cateid", cateid);
		model.addAttribute("category", categoryDao.getAll());
		ProductPage productPage = productDao.paging(cateid, pageno, 7);		
		model.addAttribute("products", productPage.getProducts());
		model.addAttribute("totalpage", productPage.getTotalPages());
		model.addAttribute("currentpage", pageno);
		return "admin";
	}

	
	@GetMapping(value="add")
	public String productAdd(Model model) {
		model.addAttribute("category", categoryDao.getAll());
		model.addAttribute("product", new Product());
		model.addAttribute("page", "product/add");
		return "admin";
	}
	
	@PostMapping(value="save")
	public String productSave(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model,
		@RequestParam("file") MultipartFile file, HttpServletRequest req) {
		if(result.hasErrors()) {
			model.addAttribute("page", "product/add");
			model.addAttribute("category", categoryDao.getAll());
			model.addAttribute("product", product);
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
				product.setPicture(file.getOriginalFilename());
				product.setCreateDate(Date.valueOf(LocalDate.now()));
				productDao.add(product);
			}
			return "redirect:/admin/product/list";
		}
	}
	
	
	@GetMapping("edit")
	public String productEdit(@RequestParam("id") String id, Model model) {
		var product = productDao.getById(id);
		model.addAttribute("product", product);
		model.addAttribute("category", categoryDao.getAll());
		model.addAttribute("page", "product/edit");
		return "admin";
	}
	
	@PostMapping("update")
	public String updateProduct(@ModelAttribute("product") Product product, Model model,
			@RequestParam(value="file", required=false) MultipartFile file, HttpServletRequest req) {
		if(file != null && !file.isEmpty()) {
			// nếu tải tệp mới
			String UploadRootPath = req.getServletContext().getRealPath("/resources/images");
			String imageUploadPath = UploadRootPath+"/"+file.getOriginalFilename();
			model.addAttribute("category", categoryDao.getAll());
			try {
				//Lưu ảnh tệp mới
				File destination = new File(imageUploadPath);
				
				file.transferTo(destination);
				//Cập nhật đường dẫn ảnh mới vào category
				product.setPicture(file.getOriginalFilename());
			} catch (Exception e) {
				model.addAttribute("error",e.getMessage());
				model.addAttribute("product", product);
				model.addAttribute("page", "category/edit");
				return "admin";
			}
		
		}else {
			var productOld = productDao.getById(product.getProductId());
			product.setPicture(productOld.getPicture());	
			product.setCreateDate(productOld.getCreateDate());
			product.setDescription(productOld.getDescription());
		}
		productDao.update(product);
		return "redirect:/admin/product/list";
	}
	
	@GetMapping("delete")
	public String deleteProduct(@RequestParam("id") String id) {
		productDao.delete(id);
		return "redirect:/admin/product/list";
	}
	
	
	@GetMapping("detail/{id}")
	public String detail(@PathVariable("id") String id, Model model) {
		
		model.addAttribute("product", productDao.getById(id));
		model.addAttribute("page", "product/detail");
		return "home";
	}
}
