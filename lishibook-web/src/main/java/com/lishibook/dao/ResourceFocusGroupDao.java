package com.lishibook.dao;

import java.util.List;

import javax.inject.Inject;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.lishibook.entity.ResourceFocusgroup;

@Repository
public class ResourceFocusGroupDao extends BaseDao<ResourceFocusgroup> {

	@Inject
	public ResourceFocusGroupDao(SessionFactory sessionFactory) {
		super(sessionFactory);
	}
	
	public List<ResourceFocusgroup> getGroups(int resourceId){
		Session session = sessionFactory.openSession();
		
		Criteria crit = session.createCriteria(ResourceFocusgroup.class);
		
		crit.add(Restrictions.eq("rid", resourceId));
		
		@SuppressWarnings("unchecked")
		List<ResourceFocusgroup> list = crit.list();
		
		session.close();
		return list;
	}

}
