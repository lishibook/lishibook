package com.lishibook.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lishibook.entity.Resource;

@Repository
public class ResourceDao extends BaseDao<Resource>{
	
	@Autowired
	public ResourceDao(SessionFactory sessionFactory){
		super(sessionFactory);
	}

	public List<Resource> search(String key, int start, int limit) {
		
		Session session = sessionFactory.openSession();
		
		Criteria crit = session.createCriteria(Resource.class);
		crit.setFirstResult(start);
		crit.setMaxResults(limit);
		
		crit.add(Restrictions.like("name", key, MatchMode.ANYWHERE));
		
		@SuppressWarnings("unchecked")
		List<Resource> list = crit.list();
		
		session.close();
		return list;
	}
}
