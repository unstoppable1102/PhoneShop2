package com.bkap.entities;

import java.io.Serializable;

public class Cart implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String productId;
	private String picture;
	private String title;
	private float price;
	private int quantity;
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}
	
	

	public Cart(String productId, String picture, String title, float price, int quantity) {
		super();
		this.productId = productId;
		this.picture = picture;
		this.title = title;
		this.price = price;
		this.quantity = quantity;
	}

	


	public String getPicture() {
		return picture;
	}



	public void setPicture(String picture) {
		this.picture = picture;
	}



	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	

}
