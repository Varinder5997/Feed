package com.mindtree.gurpartapcattlefeed.dto;

import java.util.List;

import com.mindtree.gurpartapcattlefeed.entity.Products;

public class ProductDtoAndList {
	
	private ProductDto productDto;
	private List<Products> allProducts;
	public ProductDto getProductDto() {
		return productDto;
	}
	public void setProductDto(ProductDto productDto) {
		this.productDto = productDto;
	}
	public List<Products> getAllProducts() {
		return allProducts;
	}
	public void setAllProducts(List<Products> allProducts) {
		this.allProducts = allProducts;
	}

}
