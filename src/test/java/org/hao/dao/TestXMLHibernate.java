package org.hao.dao;

import java.util.List;

import org.hao.model.User;
import org.hao.service.HibernateService;
import org.hibernate.Session;
import org.testng.annotations.Test;

import junit.framework.TestCase;

public class TestXMLHibernate extends TestCase {
	
	@Test
	public void testAddUser() {
		Session session = HibernateService.getSessionFactory().openSession();
		
		session.beginTransaction();
		
		User user = new User();
		user.setUsername("xiechen");
		user.setPassword("123");
		user.setFirstName("Chen");
		user.setLastName("xie");
		user.setRole("admin");
		user.setEmail("email.com");
		user.setActive(true);
		session.save(user);
		session.getTransaction().commit();
		session.close();
	}
	
	@Test
	public void testUpdateUser() {
		Session session = HibernateService.getSessionFactory().openSession();
		
		session.beginTransaction();
		
		User user = new User();
		user.setId(1);
		user.setUsername("wuhao");
		user.setPassword("123");
		user.setFirstName("hao");
		user.setLastName("wu");
		user.setRole("admin");
		user.setEmail("hao@email.com");
		user.setActive(true);
		session.update(user);
		session.getTransaction().commit();
		session.close();
	}
	
	@Test
	public void testListUsers() {
		Session session = HibernateService.getSessionFactory().openSession();
		
		session.beginTransaction();
		
		@SuppressWarnings("unchecked")
		List<User> users = session.createQuery("FROM User user").list();
		
		System.out.println(users);
		
		session.getTransaction().commit();
		session.close();
	}
	
	//@Test
	public void testDeleteUsers() {
		/*Session session = HibernateService.getSessionFactory().openSession();
		
		session.beginTransaction();
		
		User user = (User)session.get(User.class, 1);
		
		session.delete(user);
		
		session.getTransaction().commit();
		session.close();*/
	}

}
