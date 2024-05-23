package com.bkap.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Products")
public class Product {
	@Id
	@NotBlank(message = "Mã sản phẩm không được để trống")
	private String productId;
	@NotBlank(message = "Tên sản phẩm không được để trống")
	private String productName;
	@NotNull(message = "Giá không được để trống")
	private float price;
	@NotNull(message = "Giá không được để trống")
	private float priceOld;
	@NotNull(message = "Số lượng không được để trống")
	private int quantity;
	@NotBlank(message = "Mô tả không được để trống")
	private String description;
	private String picture;
	
	@Temporal(value = TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date createDate;
	
	private boolean status;
	
	private int categoryId;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="categoryId", referencedColumnName = "id", insertable = false, updatable = false)
	private Category category;
	
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getPriceOld() {
		return priceOld;
	}

	public void setPriceOld(float priceOld) {
		this.priceOld = priceOld;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	

}
