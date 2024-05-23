package com.bkap.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bkap.entities.Order;
import com.bkap.entities.OrderDetail;

@Repository
public class OrderImpl implements OrderDao{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Order> getAll() {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Order");
		@SuppressWarnings("unchecked")
		List<Order> data = query.getResultList();
		session.close();
		return data;
	}

	@Override
	public Order getById(String key) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void add(Order obj) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(obj);
		session.getTransaction().commit();
		session.close();
		
	}

	@Override
	public void update(Order obj) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String key) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Order> search(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insertOrderDetail(Order order, List<OrderDetail> details) {
		try {
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.save(order);
			for(OrderDetail orderDetail : details) {
					session.save(orderDetail);
			
			}
			session.getTransaction().commit();
			session.close();
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
