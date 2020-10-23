package com.mindtree.gurpartapcattlefeed.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.gurpartapcattlefeed.dto.ProductDto;
import com.mindtree.gurpartapcattlefeed.entity.Products;
import com.mindtree.gurpartapcattlefeed.repository.ProductRepository;
import com.mindtree.gurpartapcattlefeed.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired 
	ProductRepository productRepository;
	@Override
	public List<Products> allProducts() {
		
		return this.productRepository.findAll();
	}

	@Override
	public Products addProduct(Products product) {
		return this.productRepository.save(product);
	}

	@Override
	public String deleteProduct(int productId) {
		this.productRepository.deleteById(productId);
		return "deleted";
	}

	@Override
	public String editProduct(Products product) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Products findById(int id) {
		return this.productRepository.findById(id).get();
	}

	@Override
	public List<Float> makeSlipLogic(ProductDto dto) {
		List<Products>all=this.productRepository.findAll();
		float price=0;
		float quantity=0;
		float labour=0;
		price=(float) (price+dto.getMakki()*all.get(0).getProductPrice());
		quantity=(float) (quantity+dto.getMakki());
		List<Float>pricelist=new ArrayList<Float>();
		pricelist.add(price);
		pricelist.add(quantity);
		return null;
	}

	@Override
	public List<Float> quantity(ProductDto dto) {
		List<Float> all=new ArrayList<Float>();
		all.add((float) dto.getMakki());
		System.out.println(dto.getMakki());
		all.add((float) dto.getBajra());
		all.add((float) dto.getChoker());
		all.add((float) dto.getSaronDiKhall());
		all.add((float) dto.getWadaveanDiKhall());
		all.add((float) dto.getWadeve());
		all.add((float) dto.getNamak());
		all.add((float) dto.getMithaSoda());
		all.add((float) dto.getTall());
		all.add((float) dto.getBipassFat());
		all.add((float) dto.getMiniMixture());
		all.add((float) dto.getTaramira());
		all.add((float) dto.getSera());
		all.add((float) dto.getBuffer());
		all.add((float) dto.getPallse());
		all.add((float) dto.getDoc());
		all.add((float) dto.getBiscuit());
		all.add((float) dto.getKanak());
		all.add((float) dto.getShakar());
		all.add((float) dto.getSoeabeen());
		all.add((float) dto.getGharalu());
		all.add((float) dto.getToxy());
		all.add((float) dto.getTm());
		all.add((float) dto.getCalside());
		all.add((float) dto.getSaronDoc());
		return all;
	}

	@Override
	public List<Double> price(ProductDto dto) {
		List<Double>all =new ArrayList<Double>();
		List<Products>products=this.productRepository.findAll();
		all.add((double) dto.getMakki()*products.get(0).getProductPrice());
		all.add((double) dto.getBajra()*products.get(1).getProductPrice());
		all.add((double) dto.getChoker()*products.get(2).getProductPrice());
		all.add((double) dto.getSaronDiKhall()*products.get(3).getProductPrice());
		all.add((double) dto.getWadaveanDiKhall()*products.get(4).getProductPrice());
		all.add((double) dto.getWadeve()*products.get(5).getProductPrice());
		all.add((double) dto.getNamak()*products.get(6).getProductPrice());
		all.add((double) dto.getMithaSoda()*products.get(7).getProductPrice());
		all.add((double) dto.getTall()*products.get(8).getProductPrice());
		all.add((double) dto.getBipassFat()*products.get(9).getProductPrice());
		all.add((double) dto.getMiniMixture()*products.get(10).getProductPrice());
		all.add((double) dto.getTaramira()*products.get(11).getProductPrice());
		all.add((double) dto.getSera()*products.get(12).getProductPrice());
		all.add((double) dto.getBuffer()*products.get(13).getProductPrice());
		all.add((double) dto.getPallse()*products.get(14).getProductPrice());
		all.add((double) dto.getDoc()*products.get(15).getProductPrice());
		all.add((double) dto.getBiscuit()*products.get(16).getProductPrice());
		all.add((double) dto.getKanak()*products.get(17).getProductPrice());
		all.add((double) dto.getShakar()*products.get(18).getProductPrice());
		all.add((double) dto.getSoeabeen()*products.get(19).getProductPrice());
		all.add((double) dto.getGharalu()*products.get(20).getProductPrice());
		all.add((double) dto.getToxy()*products.get(21).getProductPrice());
		all.add((double) dto.getTm()*products.get(22).getProductPrice());
		all.add((double) dto.getCalside()*products.get(23).getProductPrice());
		all.add((double) dto.getSaronDoc()*products.get(24).getProductPrice());
		return all;
	}

	@Override
	public List<Double> protein(ProductDto dto) {
		List<Double>all =new ArrayList<Double>();
		List<Products>products=this.productRepository.findAll();
		all.add((double) dto.getMakki()*products.get(0).getProtein()/100);
		all.add((double) dto.getBajra()*products.get(1).getProtein()/100);
		all.add((double) dto.getChoker()*products.get(2).getProtein()/100);
		all.add((double) dto.getSaronDiKhall()*products.get(3).getProtein()/100);
		all.add((double) dto.getWadaveanDiKhall()*products.get(4).getProtein()/100);
		all.add((double) dto.getWadeve()*products.get(5).getProtein()/100);
		all.add((double) dto.getNamak()*products.get(6).getProtein()/100);
		all.add((double) dto.getMithaSoda()*products.get(7).getProtein()/100);
		all.add((double) dto.getTall()*products.get(8).getProtein()/100);
		all.add((double) dto.getBipassFat()*products.get(9).getProtein()/100);
		all.add((double) dto.getMiniMixture()*products.get(10).getProtein()/100);
		all.add((double) dto.getTaramira()*products.get(11).getProtein()/100);
		all.add((double) dto.getSera()*products.get(12).getProtein()/100);
		all.add((double) dto.getBuffer()*products.get(13).getProtein()/100);
		all.add((double) dto.getPallse()*products.get(14).getProtein()/100);
		all.add((double) dto.getDoc()*products.get(15).getProtein()/100);
		all.add((double) dto.getBiscuit()*products.get(16).getProtein()/100);
		all.add((double) dto.getKanak()*products.get(17).getProtein()/100);
		all.add((double) dto.getShakar()*products.get(18).getProtein()/100);
		all.add((double) dto.getSoeabeen()*products.get(19).getProtein()/100);
		all.add((double) dto.getGharalu()*products.get(20).getProtein()/100);
		all.add((double) dto.getToxy()*products.get(21).getProtein()/100);
		all.add((double) dto.getTm()*products.get(22).getProtein()/100);
		all.add((double) dto.getCalside()*products.get(23).getProtein()/100);
		all.add((double) dto.getSaronDoc()*products.get(24).getProtein()/100);
		return all;
	}

}
