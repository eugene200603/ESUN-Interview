package com.esun.esuninterview.models.repository.orders;

import org.springframework.data.jpa.repository.JpaRepository;

import com.esun.esuninterview.models.beans.orders.Order;

public interface OrderRepository extends JpaRepository<Order, String> {


}
