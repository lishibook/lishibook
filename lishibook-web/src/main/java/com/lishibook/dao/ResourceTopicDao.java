package com.lishibook.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lishibook.entity.ResourceTopic;

@Repository
public class ResourceTopicDao extends BaseDao<ResourceTopic>{

	@Autowired
	public ResourceTopicDao(SessionFactory sessionFactory) {
		super(sessionFactory);
	}

}
