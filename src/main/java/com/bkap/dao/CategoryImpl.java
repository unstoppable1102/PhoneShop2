package com.bkap.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.bkap.entities.Category;

@Repository
public class CategoryImpl implements CategoryDao{
	
	@Autowired
	SessionFactory sessionFactory;


	@Override
	public List<Category> getAll() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Category> result = session.createQuery("from Category").list();
		session.close();
		return result;
	}
	
	@Override
	public Category getById(Integer id) {
		Session session = sessionFactory.openSession();
		Category c = session.get(Category.class, id);
		session.close();
		return c;
	}


	@Override
	public void add(Category category) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(category);
		session.getTransaction().commit();		
		session.close();
	}

	@Override
	public void update(Category category) {
		Session session = sessionFactory.openSession();

		session.beginTransaction();

		session.update(category);

		session.getTransaction().commit();
		
		session.close();
		
	}

	@Override
	public void delete(Integer id) {
		Session session = sessionFactory.openSession();

		session.beginTransaction();

		Category c = session.get(Category.class, id);
		
		session.remove(c);
		
		session.getTransaction().commit();
		
		session.close();
		
	}

	
	@Override
	public List<Category> search(String name) {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Category> result = session.createQuery("from Category where name like :name").setParameter("name", "%"+name+"%").list();
		session.close();
		return result;
	}

	
}

