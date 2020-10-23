package com.mindtree.gurpartapcattlefeed.service;

import java.util.List;

import com.mindtree.gurpartapcattlefeed.dto.ProductDto;
import com.mindtree.gurpartapcattlefeed.entity.Products;

public interface ProductService {
	
	public List<Products> allProducts();
	public Products addProduct(Products product);
	public String deleteProduct(int productId);
	public String editProduct(Products product);
	public Products findById(int id);
	public List<Float> makeSlipLogic(ProductDto dto);
	public List<Float> quantity(ProductDto dto);
	public List<Double> price(ProductDto dto);
	public List<Double> protein(ProductDto dto);
}
