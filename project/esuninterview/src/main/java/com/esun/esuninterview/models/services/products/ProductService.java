package com.esun.esuninterview.models.services.products;


import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.esun.esuninterview.models.beans.products.Product;
import com.esun.esuninterview.models.repository.products.ProductRepository;

@Service
public class ProductService {
	@Autowired
    private ProductRepository productRepository;
	
	public void addProduct(Product product) {
		productRepository.save(product);
	}
	
	public Product findProductById(Long id) {
		Optional<Product> option = productRepository.findById(id);
		
		if(option.isEmpty()) {
			return null;
		}
		
		return option.get();
	}
	
	public Page<Product> findProductByPage(Integer pageNumber){
		Pageable pgb = PageRequest.of(pageNumber-1, 3, Sort.Direction.DESC, "productId");
		Page<Product> page = productRepository.findAll(pgb);
		return page;
	}
	
	
	@Transactional
	public Product updateProductById(Long id,Product newProduct) {
		Optional<Product> option = productRepository.findById(id);
		
		if(option.isPresent()) {
			Product product = option.get();
			product.setPrice(newProduct.getPrice());
			product.setProductName(newProduct.getProductName());
			product.setQuantity(newProduct.getQuantity());
			return product;
		}
		return null;
	}
	
	public void deleteProductById(Long id) {
		productRepository.deleteById(id);
	}
	
	public List<Product> findAllProduct(){
		List<Product> findAllProduct=productRepository.findAll();
		return findAllProduct;
	}
	
}
