package com.esun.esuninterview.models.services.products;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.esun.esuninterview.models.repository.products.ProductRepository;

@Service
public class ProductService {
	@Autowired
    private ProductRepository productRepository;
}
