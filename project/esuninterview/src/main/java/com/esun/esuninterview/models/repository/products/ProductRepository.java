package com.esun.esuninterview.models.repository.products;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.esun.esuninterview.models.beans.products.Product;

public interface ProductRepository extends JpaRepository<Product, String> {

	// 查詢庫存量大於0的商品
	List<Product> findByQuantityGreaterThan(Integer quantity);

}
