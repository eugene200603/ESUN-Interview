package com.esun.esuninterview.models.repository.products;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.esun.esuninterview.models.beans.products.Product;

public interface ProductRepository extends JpaRepository<Product, String> {
	 List<Product> findByQuantityGreaterThan(Integer quantity);

}
