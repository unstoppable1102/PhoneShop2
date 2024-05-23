 package com.bkap.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.bkap.entities.Account;



@Repository
public class AccountImpl implements AccountDao{
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Account getAccount(String username) {
		Account account = null;
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Account where username = :username");
		query.setParameter("username", username);
		try {
			account = (Account) query.getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return account;
	}

	@Override
	public List<Account> getAll() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Account> result = session.createQuery("from Account").list();
		session.close();
		return result;
	}

	@Override
	public Account getById(Integer id) {
		Session session = sessionFactory.openSession();
		Account acc = session.get(Account.class, id);
		session.close();
		return acc;
	}

	@Override
	public void add(Account account) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(account);
		session.getTransaction().commit();		
		session.close();
		
	}

	@Override
	public void update(Account account) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Account> search(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean isUsernameExists(String username) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Long count = (Long) session.createQuery("Select count(*) From Account where username = :username")
				.setParameter("username", username).getSingleResult();
		session.getTransaction().commit();		
		session.close();
		return count > 0;
	}

}
