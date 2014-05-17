package com.lishibook.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lishibook.entity.User;

@Repository
public class UserDao extends BaseDao<User>{

	@Autowired
	public UserDao(SessionFactory sessionFactory) {
		super(sessionFactory);
	}

	public User getUserByEmail(String email) {
		Session session = sessionFactory.openSession();
		
		Criteria crit = session.createCriteria(User.class);
		crit.setMaxResults(1);
		crit.add(Restrictions.eq("email", email));
		
		User user = (User) crit.uniqueResult();

		session.close();
		return user;
	}

}
