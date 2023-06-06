package com.esun.esuninterview.models.services.orders;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.esun.esuninterview.models.beans.orders.Order;
import com.esun.esuninterview.models.beans.orders.OrderDetail;
import com.esun.esuninterview.models.beans.products.Product;
import com.esun.esuninterview.models.repository.orders.OrderDetailRepository;
import com.esun.esuninterview.models.repository.orders.OrderRepository;
import com.esun.esuninterview.models.repository.products.ProductRepository;

@Service
public class OrderService {
	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private OrderDetailRepository orderDetailRepository;

	@Autowired
	private ProductRepository productRepository;

	public Order createOrder(Order order) {
		// 設定訂單的付款狀態為未付款
		order.setPayStatus(0);
		
		//總金額歸零
		BigDecimal totalAmount = BigDecimal.ZERO;
		
		//遍歷訂單明細
		for (OrderDetail orderDetail : order.getOrderDetails()) {
			Product product = orderDetail.getProduct();
			int quantityToPurchase = orderDetail.getQuantity();
			int currentQuantity = product.getQuantity();
			//驗證購買數量不大於庫存
			if (product == null || quantityToPurchase > currentQuantity) {
				throw new RuntimeException("商品庫存不足或不存在");
			}
			//計算總金額
			BigDecimal itemPrice = product.getPrice().multiply(BigDecimal.valueOf(orderDetail.getQuantity()));
			orderDetail.setItemPrice(itemPrice);
			totalAmount = totalAmount.add(itemPrice);
			
			//庫存減去購買數量
			int newQuantity = currentQuantity - quantityToPurchase;
		    product.setQuantity(newQuantity);
		    productRepository.save(product);		
		}

		order.setPrice(totalAmount);

		// 設定訂單明細的訂單參考
		for (OrderDetail orderDetail : order.getOrderDetails()) {
			orderDetail.setOrder(order);
		}

		return orderRepository.save(order);
	}

	public Order getOrderById(String orderId) {
		return orderRepository.findById(orderId).orElse(null);
	}

	public List<Order> getAllOrders() {
		return orderRepository.findAll();
	}

	public void deleteOrder(String orderId) {
		orderRepository.deleteById(orderId);
	}

}
