package org.hao.service;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateService {
	
	private static SessionFactory sessionFactory;
	private static ServiceRegistry serviceRegistry;

	private HibernateService() {}
	
	public static SessionFactory getSessionFactory() {
		if(sessionFactory == null){
			Configuration configuration = new Configuration();
		    configuration.configure();
		    serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
		    sessionFactory = configuration.buildSessionFactory(serviceRegistry);
		}
		
	    return sessionFactory;
    }

	
}
