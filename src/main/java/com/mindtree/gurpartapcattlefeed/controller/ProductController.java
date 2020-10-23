package com.mindtree.gurpartapcattlefeed.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mindtree.gurpartapcattlefeed.dto.LoginDto;
import com.mindtree.gurpartapcattlefeed.dto.ProductDto;
import com.mindtree.gurpartapcattlefeed.dto.ProductDtoAndList;
import com.mindtree.gurpartapcattlefeed.entity.Products;
import com.mindtree.gurpartapcattlefeed.entity.User;
import com.mindtree.gurpartapcattlefeed.service.ProductService;
import com.mindtree.gurpartapcattlefeed.service.UserService;

@Controller
public class ProductController {
	
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	
	@RequestMapping("/")
	public String homepage() {
		return "User";
	}
	
	@RequestMapping("/register")
	public String registerUser(Model model) {
		User user=new User();
		model.addAttribute("user", user);
		return "NewUser";
	}
	@RequestMapping("/save-user")
	public String SaveUser(@ModelAttribute User user) {
		List<User>allUsers=this.userService.allUsers();
		int count=0;
		for (User user2 : allUsers) {
			if(user2.getUserEmail().compareTo(user.getUserEmail())==0) {
				count=count+1;
			}
		}
		if(count==0) {
		this.userService.saveUser(user);
		return "User";
		}
		else {
			return "AlreadyExist";
		}
	}
	
	@RequestMapping("/login")
	public String loginUser(Model model) {
		LoginDto loginDto=new LoginDto();
		model.addAttribute("loginDto", loginDto);
		return "LoginUser";
	}
	String loginUser;
	@RequestMapping("/login-user")
	public String loginPage(@ModelAttribute LoginDto loginDto,Model model) {
		String id=loginDto.getUserEmail();
		List<User>allUsers=this.userService.allUsers();
		int count=0;
		for (User user2 : allUsers) {
			if(user2.getUserEmail().compareTo(loginDto.getUserEmail())==0) {
				count=count+1;
			}
		}
		if(count>0) {
			User user=this.userService.findByEmail(id);
			if(user.getPassword().compareTo(loginDto.getPassword())==0) {
				count=count+1;
			}
		}
		if(count==0) {
			return "UserIsNotExist";
		}
		else if (count==1) {
			return "WrongPassword";
		}
		else {
		User user=this.userService.findByEmail(id);
		model.addAttribute("user", user);
		loginUser=user.getUserEmail();
		return "LoginPage";
		}
	}
	@RequestMapping("/login-page")
	public String loginAgain(Model model) {
		User user=this.userService.findByEmail(loginUser);
		model.addAttribute("user", user);
		return "LoginPage";
	}
	
	@RequestMapping("/allProducts")
	public String allProducts(Model model) {
		List<Products> all=this.productService.allProducts();
		model.addAttribute("all", all);
		return "AllProducts";
	}
	@RequestMapping("/addproduct")
	public String newProduct(Model model) {
		 Products product =new Products();
		 model.addAttribute("product", product);
		return "NewProduct";
	}
	
	@RequestMapping("/save-product")
	public String saveProduct(@ModelAttribute Products products,Model model) {
		this.productService.addProduct(products);
		List<Products> all=this.productService.allProducts();
		model.addAttribute("all", all);
		return "AllProducts";
	}
	
	@RequestMapping("/editProduct/{id}")
	public String editProduct(@PathVariable (name = "id")int id,Model model) {
		Products product=this.productService.findById(id);
		model.addAttribute("product", product);
		return "EditProduct";
	}
	@RequestMapping("/makeSlip")
	public String makeSlip(Model model,Model m) {
		List<Products> all=this.productService.allProducts();
		for (Products products : all) {
			products.setProductQuantity(0);
		}
		ProductDtoAndList dto=new ProductDtoAndList();
		ProductDto productDto=new ProductDto();
		dto.setAllProducts(all);
		dto.setProductDto(productDto);
		model.addAttribute("dto", dto);
		m.addAttribute("productDto", productDto);
		return "MaeSlip";
	}
	@RequestMapping("/make-slip")
	public String slip(@ModelAttribute ProductDto productDtoa,Model model,Model model1,Model model2,Model modelp,Model modelq,Model modell,Model modelg,Model modeltotal,Model modelname) {
		List<Float>alla=this.productService.makeSlipLogic(productDtoa);
		List<Products> all=this.productService.allProducts();
		ProductDtoAndList dto=new ProductDtoAndList();
		ProductDto productDto=new ProductDto();
		dto.setAllProducts(all);
		dto.setProductDto(productDto);
		model.addAttribute("dto", dto);
		List<Float>quantity=this.productService.quantity(productDtoa);
		float totalQuantity=0;
		for (Float float1 : quantity) {
			totalQuantity=totalQuantity+float1;
		}
		modelq.addAttribute("totalQuantity", totalQuantity);
		model1.addAttribute("quantity", quantity);
		List<Double>price=this.productService.price(productDtoa);
		float labour =(totalQuantity/50)*25;
		modell.addAttribute("labour", labour);
		double totalPrice=0;
		for (Double double1 : price) {
			totalPrice=totalPrice+double1;
		}
		modelp.addAttribute("totalPrice", totalPrice);
		double gst=(totalPrice*12)/100;
		modelg.addAttribute("gst", gst);
		double groustotal=gst+labour+totalPrice;
		modeltotal.addAttribute("groustotal", groustotal);
		model2.addAttribute("price", price);
		String name=productDtoa.getName();
		modelname.addAttribute("name", name);
		return "BillSlip";
	}
	@RequestMapping("/checkProtein")
	public String checkProtein(Model model,Model m) {
		List<Products> all=this.productService.allProducts();
		for (Products products : all) {
			products.setProductQuantity(0);
		}
		ProductDtoAndList dto=new ProductDtoAndList();
		ProductDto productDto=new ProductDto();
		dto.setAllProducts(all);
		dto.setProductDto(productDto);
		model.addAttribute("dto", dto);
		m.addAttribute("productDto", productDto);
		return "ProteinCkeck";
	}
	@RequestMapping("/calculate-protein")
	public String calculateProtein(@ModelAttribute ProductDto productDtoa,Model model,Model model1,Model modelq,Model modelp,Model modeltotalProtein,Model modelpp) {
		List<Products> all=this.productService.allProducts();
		ProductDtoAndList dto=new ProductDtoAndList();
		ProductDto productDto=new ProductDto();
		dto.setAllProducts(all);
		dto.setProductDto(productDto);
		model.addAttribute("dto", dto);
		List<Float>quantity=this.productService.quantity(productDtoa);
		float totalQuantity=0;
		for (Float float1 : quantity) {
			totalQuantity=totalQuantity+float1;
		}
		modelq.addAttribute("totalQuantity", totalQuantity);
		model1.addAttribute("quantity", quantity);
		List<Double>protein=this.productService.protein(productDtoa);
		modelp.addAttribute("protein", protein);
		double totalProtein=0;
		for (Double double1 : protein) {
			totalProtein=totalProtein+double1;
		}
		modeltotalProtein.addAttribute("totalProtein", totalProtein);
		float pp=(float) ((totalProtein/totalQuantity)*100);
		modelpp.addAttribute("pp", pp);
		return "ProteinSlip";
	}
	
	
}
