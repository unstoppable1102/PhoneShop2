package com.bkap.dao;

import java.util.List;

import com.bkap.entities.Product;
import com.bkap.entities.ProductPage;

public interface ProductDao extends GenericDao<Product, String>{
	public List<Product> search(int cateid);
	public List<Product> search(int cateid, String name);
	public List<Product> search(float fromPrice, float toPrice);
	public ProductPage paging(int cateid, int pageno, int pagesize);
	public List<Product> getByCategory(int id);
	public List<Product> getProductsByCategoryIdExceptProduct(Integer categoryId, String productId);
	public List<Product> top8Product();
	public List<Product> newArrivals();
}
