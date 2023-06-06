package com.esun.esuninterview.controllers.products;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.esun.esuninterview.models.beans.products.Product;
import com.esun.esuninterview.models.services.products.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService productService;

	//後台
	
	@GetMapping("/ProductBack/add")
	public String addProduct(Model model) {
		model.addAttribute("product", new Product());
		return "/products/ProductAdd";
	}

	@PostMapping("/ProductBack/post")
	public String postProduct(@ModelAttribute("product") Product product, Model model) {
		try {
			productService.addProduct(product);
			return "redirect:/ProductBack";
		} catch (DataIntegrityViolationException e) {
			String errorMessage = "";
			errorMessage = "此商品已存在";
			model.addAttribute("errorMessage", errorMessage);
			return "/products/ProductAdd";
		}
	}

	@GetMapping("/ProductBack")
	public String findAllProductBack(Model model) {
		List<Product> findAllProduct = productService.findAllProduct();
		model.addAttribute("products", findAllProduct);
		return "/products/ProductBack";
	}

	@DeleteMapping("/ProductBack/delete")
	public String deleteProduct(@RequestParam String id) {
		productService.deleteProductById(id);
		return "redirect:/ProductBack";
	}

	@GetMapping("/ProductBack/edit")
	public String editProduct(@RequestParam("id") String id, Model model) {
		Product product = productService.findProductById(id);
		model.addAttribute("product", product);
		return "/products/ProductEdit";
	}

	@PutMapping("/ProductBack/edit")
	public String putEditProduct(@ModelAttribute("product") Product product, Model model) {
	
			productService.updateProductById(product.getProductId(), product);
			return "redirect:/ProductBack";		
	}
	
//前台	
	@GetMapping("/ProductList")
	public String findAllProduct(Model model) {
		List<Product> findStockProduct = productService.findStockProduct();
		model.addAttribute("products", findStockProduct);
		return "/products/ProductList";
	}
	
	@GetMapping("/ProductDetail/{id}")
	public String ProductDetail(Model model,@PathVariable String id) {
		Product product = productService.findProductById(id);
		model.addAttribute("product", product);
		
		return "/products/ProductDetail";
	}
	
}
