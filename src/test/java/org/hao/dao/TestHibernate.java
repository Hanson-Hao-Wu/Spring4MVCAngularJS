package org.hao.dao;

import org.hao.model.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.testng.annotations.Test;

import junit.framework.TestCase;
@Transactional
public class TestHibernate extends TestCase {

	
	@Autowired
	private SessionFactory sessionFactory;
	
	protected Session getSession(){
        return sessionFactory.getCurrentSession();
    }
	
	@Test
	public void testAddUser() {
		
		
		User user = new User();
		user.setUsername("liuhuan");
		user.setPassword("123");
		user.setFirstName("Chen");
		user.setLastName("xie");
		user.setRole("admin");
		user.setEmail("email.com");
		user.setActive(true);
		
		System.out.println("sessionFactory: " + sessionFactory);
		System.out.println("getSession: " + getSession());
		
		getSession().persist(user);
	}
}
