package com.esun.esuninterview.models.beans.orders.ordersDTO;

import java.math.BigDecimal;

public class OrderDTO {
	private String productId;
    private BigDecimal standPrice;
    private int quantity;
    
    
	public OrderDTO() {
		
	}
	
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public BigDecimal getStandPrice() {
		return standPrice;
	}
	public void setStandPrice(BigDecimal standPrice) {
		this.standPrice = standPrice;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
    
    
    
}
