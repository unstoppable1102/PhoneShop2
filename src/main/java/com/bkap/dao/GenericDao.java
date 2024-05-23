package com.bkap.dao;

import java.util.List;

public interface GenericDao<T, K> {
	public List<T> getAll();

	public T getById(K key);

	public void add(T obj);

	public void update(T obj);

	public void delete(K key);

	public List<T> search(String name);
}
