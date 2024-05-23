package com.bkap.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.bkap.entities.Product;
import com.bkap.entities.ProductPage;


@Repository
public class ProductImpl implements ProductDao{
	
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Product> getAll() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Product> result = session.createQuery("from Product").list();
		session.close();
		return result;
	}

	@Override
	public Product getById(String id) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Product p = session.find(Product.class, id);
		session.getTransaction().commit();
		session.close();
		return p;
	}

	@Override
	public void add(Product product) {
		Session session = sessionFactory.openSession();

		session.beginTransaction();

		session.save(product);

		session.getTransaction().commit();
		
		session.close();
		
	}

	@Override
	public void update(Product product) {
		Session session = sessionFactory.openSession();

		session.beginTransaction();

		session.update(product);

		session.getTransaction().commit();
		
		session.close();
		
	}

	@Override
	public void delete(String id) {
		Session session = sessionFactory.openSession();

		session.beginTransaction();

		Product p = session.get(Product.class, id);
		
		session.remove(p);
		
		session.getTransaction().commit();
		
		session.close();
		
	}

	@Override
	public List<Product> search(String name) {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Product> result = session.createQuery("from Product where productName like :name").setParameter("name", "%"+name+"%").list();
		session.close();
		return result;
	}

	@Override
	public ProductPage paging(int cateid, int pageno, int pagesize) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		int records=0;
		Query query=null;
		if(cateid==0) {
			query=session.createQuery("from Product");
			records=query.getResultList().size();
			query.setFirstResult((pageno-1)*pagesize).setMaxResults(pagesize).getResultList();
		}else{
			
			query=session.createQuery("from Product where categoryId=:cateid").setParameter("cateid", cateid);
			records=query.getResultList().size();
			query.setFirstResult((pageno-1)*pagesize).setMaxResults(pagesize);
		}
		@SuppressWarnings("unchecked")
		List<Product> result=query.getResultList();
		ProductPage pp=new ProductPage();
		pp.setProducts(result);
		pp.setCurrentPage(pageno);
		pp.setPageSize(pagesize);
		int totalpage=records%pagesize==0?records/pagesize:(records/pagesize)+1;
		pp.setTotalPages(totalpage);
		session.close();
		return pp;
	}

	@Override
	public List<Product> getByCategory(int id) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Product> result = session.createQuery("from Product where categoryId = :cateid")
		.setParameter("cateid", id).list();
		session.getTransaction().commit();
		return result;
	}

	@Override
	public List<Product> search(int cateid) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Query query=null;
		if(cateid==0) {
			query=session.createQuery("from Product");
		}else{
			query=session.createQuery("from Product where categoryId = :cateid");
			query.setParameter("cateid",cateid);
		}
		@SuppressWarnings("unchecked")
		List<Product> result=query.getResultList();
		session.close();
		return result;
	}

	@Override
	public List<Product> search(int cateid, String name) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Query query=null;
		if(cateid==0) {
			query=session.createQuery("from Product where productName like :name").setParameter("name", "%"+name+"%");
		}else{
			query=session.createQuery("from Product where categoryId=:cateid and productName like :name");
			query.setParameter("cateid",cateid);
			query.setParameter("name","%"+name+"%");
		}
		@SuppressWarnings("unchecked")
		List<Product> result = query.getResultList();
		session.close();
		return result;
	}

	@Override
	public List<Product> search(float fromPrice, float toPrice) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		Query query=null;
		if(fromPrice==0 && toPrice>0) {
			query=session.createQuery("from Product where price<=:toPrice ORDER BY price ").setParameter("toPrice",toPrice);
		}else if(fromPrice>0 && toPrice==0)
		{
			query=session.createQuery("from Product where price>=:fromPrice ORDER BY price").setParameter("fromPrice",fromPrice);
		}else {
			query=session.createQuery("from Product where price>=:fromPrice and price<=:toPrice ORDER BY price");
			query.setParameter("toPrice",toPrice);
			query.setParameter("fromPrice",fromPrice);
		}
		@SuppressWarnings("unchecked")
		List<Product> result=query.getResultList();
		session.close();
		return result;
	}

	@Override
	public List<Product> top8Product() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Product> result = session.createQuery("from Product").setMaxResults(8).list();
		session.close();
		return result;
	}

	@Override
	public List<Product> newArrivals() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Product> result = session.createQuery("from Product order by createDate DESC").setMaxResults(5).list();
		session.close();
		return result;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Product> getProductsByCategoryIdExceptProduct(Integer categoryId, String productId) {
		Session session = sessionFactory.openSession();
        Query query = session.createQuery("FROM Product WHERE categoryId = :categoryId AND productId != :productId");
        query.setParameter("categoryId", categoryId);
        query.setParameter("productId", productId);
        List<Product> result = query.getResultList();
        session.close();
        return result;
	}

}
