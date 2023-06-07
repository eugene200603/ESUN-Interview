package com.esun.esuninterview.models.beans.orders;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "Orders")
public class Order {
	
	//目前自訂義流水號會在伺服器重啟時重置,導致主鍵重複(尚未解決)
	@Id
    @GeneratedValue(generator = "order-id")
    @GenericGenerator(name = "order-id", strategy = "com.esun.esuninterview.models.beans.orders.OrderIdGenerator")
    @Column(name = "OrderID")
    private String orderId;

	
//    @ManyToOne
//    @JoinColumn(name = "MemberID", referencedColumnName = "memberID")
//    private Member member;

	@Column(name = "MemberID")
	private Integer memberId;
	
	
    @Column(name = "Price")
    private BigDecimal price;

    @Column(name = "PayStatus")
    private Integer payStatus;

    @OneToMany(mappedBy = "order")
    private List<OrderDetail> orderDetails;

	public Order() {
		 this.orderDetails = new ArrayList<>();
	}
	
	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	

	public Integer getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(Integer payStatus) {
		this.payStatus = payStatus;
	}

	public List<OrderDetail> getOrderDetails() {
		return orderDetails;
	}

	public void setOrderDetails(List<OrderDetail> orderDetails) {
		this.orderDetails = orderDetails;
	}


	
	

}
