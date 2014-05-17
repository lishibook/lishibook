package com.lishibook.dao;

import java.lang.reflect.ParameterizedType;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

@SuppressWarnings("unchecked")
public class BaseDao<T>{

	private Class<T> entityClass; 
	
	protected SessionFactory sessionFactory; 
	
	public BaseDao(SessionFactory sessionFactory){
		ParameterizedType type = (ParameterizedType) this.getClass().getGenericSuperclass();
		entityClass = (Class<T>) type.getActualTypeArguments()[0]; 
		this.sessionFactory = sessionFactory;
	}
	
	public T get(int id) {
		Session session = sessionFactory.openSession();
		Object obj = session.get(entityClass, id);
		session.close();
		return (T) obj;
	}

	public void update(T entity) {
		Session session = sessionFactory.openSession();
		session.update(entity);
		session.close();
	}

	public void delete(T entity) {
		Session session = sessionFactory.openSession();
		session.delete(entity);
		session.close();
	}
	
	public void save(T entity) {
		Session session = sessionFactory.openSession();
		session.save(entity);
		session.close();
	}
}
