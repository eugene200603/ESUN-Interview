package com.esun.esuninterview.controllers.products;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.esun.esuninterview.models.beans.products.Product;
import com.esun.esuninterview.models.services.products.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;
	
	@GetMapping("/Product/add")
	public String addLost(Model model) {
		model.addAttribute("product",new Product());	
		return "/products/ProductAdd";
	}
	@PostMapping("/Product/post")
	public String postLost(@ModelAttribute("product")Product product,Model model) {
		productService.addProduct(product);	
		return "redirect:/ProductBack";
	}	
	@GetMapping("/ProductBack")
	public String findAllLostBack(Model model){
		List<Product> findAllProduct=productService.findAllProduct();
		model.addAttribute("products", findAllProduct);
		return "/products/ProductBack";
	}
}
