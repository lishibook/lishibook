package com.lishibook.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lishibook.entity.ResourceFocus;

@Repository
public class ResourceFocusDao extends BaseDao<ResourceFocus>{

	@Autowired
	public ResourceFocusDao(SessionFactory sessionFactory) {
		super(sessionFactory);
	}

	public List<ResourceFocus> getFocuses(int fromId) {
		Session session = sessionFactory.openSession();
		
		Criteria crit = session.createCriteria(ResourceFocus.class);
		
		crit.add(Restrictions.eq("fromrid", fromId));
		
		@SuppressWarnings("unchecked")
		List<ResourceFocus> list = crit.list();
		
		session.close();
		return list;
	}

	public ResourceFocus getFocus(int from, int to) {
		Session session = sessionFactory.openSession();
		
		Criteria crit = session.createCriteria(ResourceFocus.class);
		crit.setMaxResults(1);
		crit.add(Restrictions.eq("fromrid", from));
		crit.add(Restrictions.eq("torid",to));
		
		Object obj = crit.uniqueResult();
		
		session.close();
		return (ResourceFocus) obj;
	}
}
