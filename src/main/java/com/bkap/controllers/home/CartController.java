package com.bkap.controllers.home;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bkap.dao.OrderDao;
import com.bkap.dao.ProductDao;
import com.bkap.entities.Cart;
import com.bkap.entities.Order;
import com.bkap.entities.OrderDetail;
import com.bkap.entities.Product;


@Controller
public class CartController {
	
	@Autowired
	ProductDao productDao;
	
	@Autowired
	OrderDao orderDao;
	
	
	
	
	
	//GET: countItems "trả về số lượng sản phẩm trong giỏ hàng"
	@SuppressWarnings("unchecked")
	@RequestMapping("countItems")
	public @ResponseBody String getItems(Model model, HttpServletRequest req) {
		List<Cart> carts = new ArrayList<>();
		HttpSession session = req.getSession();
		if(session.getAttribute("cart") != null) {
			carts = (List<Cart>) session.getAttribute("cart");
		}
		System.out.println(carts.size());	
		return String.valueOf(carts.size());
		
	}
	
	
	//GET: addItem "thêm sách vào giỏ hàng và trả về tổng số sách trong giỏ"
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "addItem/{id}")
	public @ResponseBody String addItem(@PathVariable("id") String productId, HttpServletRequest req) {
		List<Cart> carts = new ArrayList<>();
		HttpSession session = req.getSession();
		Product p = productDao.getById(productId);
		if(session.getAttribute("cart") == null) {
			Cart cart = new Cart(p.getProductId(),p.getPicture(), p.getProductName(), p.getPrice(), 1);
			carts.add(cart);
			session.setAttribute("cart", carts);
		}else {
			carts = (List<Cart>) session.getAttribute("cart");
			boolean duplicate = false;
			for (int i = 0; i < carts.size(); i++) {
				Cart cs = carts.get(i);
				if (cs.getProductId().equals(productId)) {
					cs.setQuantity(cs.getQuantity() + 1);
					duplicate = true;
					break;
				}
			}
			if(duplicate) {
				session.setAttribute("cart", carts);
			}else {
				Cart cart = new Cart(p.getProductId(), p.getPicture(), p.getProductName(), p.getPrice(), 1);
				carts.add(cart);
			}
		}
		session.setAttribute("cart", carts);
		return String.valueOf(carts.size());
	}
	
	//GET: cart "trả về sp trong giỏ hàng và hiển thị trên view home/cart"
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "cart")
	public String showCart(Model model, HttpServletRequest req) {
		model.addAttribute("page", "cart");
		List<Cart> carts = new ArrayList<>();
		HttpSession session = req.getSession();
		
		if (session.getAttribute("cart") != null) {
			carts = (List<Cart>) session.getAttribute("cart");
		}
		model.addAttribute("carts", carts);
		return "home";
	}
	
	
	//GET: updateCart/{id}/{value} "cập nhật lại số lượng đặt trong giỏ hang"
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "updateCart/{id}/{value}")
	public @ResponseBody String updateCart(@PathVariable("id") String productId, @PathVariable("value") Integer quantity,
			Model model, HttpServletRequest req) {
		List<Cart> carts = new ArrayList<>();
		HttpSession session = req.getSession();
		if (session.getAttribute("cart") != null) {
			carts = (List<Cart>) session.getAttribute("cart");
			for (int i = 0; i < carts.size(); i++) {				
				Cart c = carts.get(i);
				if (c.getProductId().equals(productId)) {
					c.setQuantity(quantity);
					break;
				}
			}
		}
		return "";
	}
	
	
	//GET: removeItem/{id} "xóa một sản phẩm trong giỏ hàng"
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "removeItem/{id}")
	public @ResponseBody String removeItem(@PathVariable("id") String productId, HttpServletRequest req) {
		List<Cart> carts = new ArrayList<>();
		HttpSession session = req.getSession();
		
		boolean find = false;
		if(session.getAttribute("cart") != null) {
			int i;
			carts = (List<Cart>) session.getAttribute("cart");
			for ( i = 0; i < carts.size(); i++) {
				Cart c = carts.get(i);
				if(c.getProductId().equals(productId)) {
					find = true;
					break;
				}
			} 
			if(find) {
				carts.remove(i);
			}
			session.setAttribute("cart", carts);
		}
		return "";
	}
	
	
	
	//POST: order "xử lý đặt hang"
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "order")
	public String addOrder(String address, String phone, String note, Model model, HttpServletRequest req) {
		List<Cart> carts = null;
		HttpSession session = req.getSession();
		
		if(session.getAttribute("userid") == null) {
			return "redirect:/login";
		}
		if(session.getAttribute("cart") != null) {
			carts = (List<Cart>) session.getAttribute("cart");
			String timestamp = new SimpleDateFormat("yyMMdd-HHmmss").format(Calendar.getInstance().getTime());
			Order order = new Order();
			order.setOrderId("HD"+timestamp);
			order.setAccountId((int) session.getAttribute("userid"));
			order.setOrderDate(Date.valueOf(LocalDate.now()));
			order.setReceiveAddress(address);
			order.setReceiveDate(null);
			order.setReceivePhone(phone);
			order.setNote(note);
			List<OrderDetail> orderDetails = new ArrayList<OrderDetail>();
			for(Cart cart : carts) {
				orderDetails.add(new OrderDetail("HD"+timestamp, cart.getProductId(), cart.getQuantity(), cart.getPrice()));
				
			}
			orderDao.insertOrderDetail(order, orderDetails);
			model.addAttribute("msg", "Đặt hàng thành công");
			
		}else {
			model.addAttribute("msg","Giỏ hàng trống");
		}
		model.addAttribute("page", "cart");
		carts=new ArrayList<Cart>();
		session.setAttribute("cart", null);
		model.addAttribute("carts", carts);
		return "home";
	}
	
	

}
