package org.hao.dao.impl;

import java.util.List;

import org.hao.dao.AbstractDao;
import org.hao.dao.UserDao;
import org.hao.model.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("userDao")
@Transactional
public class UserDaoImpl extends AbstractDao<Integer, User> implements UserDao {

	@Override
	public User getUserById(int id) {
		
		return getByKey(id);
	}
	
	@Override
	public User getUserByUsername(String username) {
		
		Criteria criteria = createEntityCriteria();
        criteria.add(Restrictions.eq("username", username));
        return (User) criteria.uniqueResult();
	}

	@Override
	public void saveUser(User user) {
		
		persist(user);
	}

	@Override
	public void deleteUserById(int id) {
		
		Query query = getSession().createSQLQuery("delete from Employee where id = :id");
        query.setInteger("id", id);
        query.executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> getAllUsers() {
		
		Criteria criteria = createEntityCriteria();
        return (List<User>) criteria.list();
	}

}
