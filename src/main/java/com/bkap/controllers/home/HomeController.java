package com.bkap.controllers.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bkap.dao.CategoryDao;
import com.bkap.dao.ProductDao;
import com.bkap.entities.Category;
import com.bkap.entities.Product;
import com.bkap.entities.ProductPage;

@Controller
public class HomeController {
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	ProductDao productDao;
	
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("page", "index");
		model.addAttribute("categories", categoryDao.getAll());
		model.addAttribute("t8products", productDao.top8Product());
		model.addAttribute("newPro", productDao.newArrivals());
		return "home";
	}
	
	
	//GET:trang-chu "lấy toàn bộ sản phẩm và hiển thị view product/products"
	@RequestMapping("products")
	public String products(Integer cateid, Integer pageno, Model model) {
		model.addAttribute("page", "product/products");
		cateid = cateid == null ? 0 : cateid;
		pageno = pageno == null ? 1 : pageno;
		model.addAttribute("cateid", cateid);
		model.addAttribute("categories", categoryDao.getAll());
		ProductPage productPage = productDao.paging(cateid, pageno, 8);
		
		model.addAttribute("products", productPage.getProducts());
		model.addAttribute("totalpage", productPage.getTotalPages());
		model.addAttribute("currentpage", pageno);

		return "home";
	}
	
	@RequestMapping("searchByPrice")
	public String searchByPrice(String fromPrice, String toPrice, Model model) {
		model.addAttribute("page", "product/searchByPrice");
		if (fromPrice == null || fromPrice.equals("") || toPrice == null || toPrice.equals("")) {
	        model.addAttribute("products", productDao.getAll());
	    } else {
			float from = fromPrice == null || fromPrice.equals("") ? 0 : Float.parseFloat(fromPrice);
			float to = toPrice == null || toPrice.equals("") ? 0 : Float.parseFloat(toPrice);			
			model.addAttribute("products", productDao.search(from, to));
	    }
		return "home";
	}
	 
	@RequestMapping("searchByName")
	public String searchByName(Integer cateid, String searchname, Model model) {
		model.addAttribute("page", "product/searchByName");
		cateid = cateid == null? 0 : cateid;
		searchname = searchname == null ? "" : searchname;
		model.addAttribute("categories", categoryDao.getAll());
		model.addAttribute("cateid", cateid);	
		model.addAttribute("products", productDao.search(cateid, searchname));
		return "home";
	}
	
	
	@RequestMapping("detail/{id}")
	public String detail(@PathVariable("id") String id, Model model) {
		Product product = productDao.getById(id);
	    model.addAttribute("product", product);
		model.addAttribute("category", categoryDao.getAll());
		
		if(product != null && product.getCategory() != null) {
			Category category = product.getCategory();
			
			List<Product> productsInSameCategory = productDao.getProductsByCategoryIdExceptProduct(category.getId(), id);
			
			 model.addAttribute("productsInSameCategory", productsInSameCategory);
		}
		
		model.addAttribute("page", "product/detail");
		return "home";
	}

	@GetMapping("about")
	public String about(Model model) {
		model.addAttribute("page", "about");
		return "home";
	}
	
	@GetMapping("blogs")
	public String blogs(Model model) {
		model.addAttribute("page", "blogs");
		return "home";
	}
	
	
	@GetMapping("contact")
	public String contact(Model model) {
		model.addAttribute("page", "contact");
		return "home";
	}
	
	
	@GetMapping("wishlist")
	public String wishlist(Model model) {
		model.addAttribute("page", "wishlist");
		return "home";
	}
	
	
	@GetMapping("my-account")
	public String myAccount(Model model) {
		model.addAttribute("page", "my-account");
		return "home";
	}
	
	@GetMapping("privacy-policy")
	public String privacyPolicy(Model model) {
		model.addAttribute("page", "privacy-policy");
		return "home";
	}
	
	
	@GetMapping("terms-of-service")
	public String termsOfService(Model model) {
		model.addAttribute("page", "terms-of-service");
		return "home";
	}
	
	
}
