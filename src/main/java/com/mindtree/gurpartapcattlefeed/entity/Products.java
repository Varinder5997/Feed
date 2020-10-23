package com.mindtree.gurpartapcattlefeed.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Products {
	@Id 
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int productId;
	private String productName;
	private double protein;
	private double productQuantity;
	private double productPrice;
	
	
	
	
	public double getProtein() {
		return protein;
	}


	public void setProtein(double protein) {
		this.protein = protein;
	}


	public int getProductId() {
		return productId;
	}


	public void setProductId(int productId) {
		this.productId = productId;
	}


	public String getProductName() {
		return productName;
	}


	public void setProductName(String productName) {
		this.productName = productName;
	}


	public double getProductQuantity() {
		return productQuantity;
	}


	public void setProductQuantity(double productQuantity) {
		this.productQuantity = productQuantity;
	}


	public double getProductPrice() {
		return productPrice;
	}


	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}


	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Products(int productId, String productName, double protein, double productQuantity, double productPrice) {
		super();
		this.productId = productId;
		this.productName = productName;
		this.protein = protein;
		this.productQuantity = productQuantity;
		this.productPrice = productPrice;
	}


	
	

}
