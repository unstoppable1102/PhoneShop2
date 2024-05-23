package com.bkap.dao;

import java.util.List;

import com.bkap.entities.Order;
import com.bkap.entities.OrderDetail;

public interface OrderDao extends GenericDao<Order, String>{
	public boolean insertOrderDetail(Order order, List<OrderDetail> details );
}

