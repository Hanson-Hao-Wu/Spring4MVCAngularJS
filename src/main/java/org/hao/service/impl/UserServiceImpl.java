package org.hao.service.impl;

import java.util.List;

import org.hao.dao.UserDao;
import org.hao.model.User;
import org.hao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {

	
	@Autowired
	private UserDao userDao;
	
	@Override
	public void addUser(User user) {
		
		userDao.saveUser(user);
	}
	
	@Override
	public void updateUser(User user) {
		
		User entity = userDao.getUserById(user.getId());
		if(entity != null){
			
			entity.setActive(user.isActive());
			entity.setEmail(user.getEmail());
			entity.setFirstName(user.getFirstName());
			entity.setLastName(user.getLastName());
			entity.setPassword(user.getPassword());
			entity.setRole(user.getRole());
			entity.setUsername(user.getUsername());
		}
	}

	@Override
	public void deleteUserById(int id) {

		userDao.deleteUserById(id);
	}

	@Override
	public List<User> getAllUsers() {
		
		return userDao.getAllUsers();
	}

	@Override
	public User findUserById(int id) {
		return userDao.getUserById(id);
	}

	@Override
	public User findUserByUsername(String username) {
		
		return userDao.getUserByUsername(username);
	}

	@Override
	public void deleteAllUsers() {
		
	}

	@Override
	public boolean isUsernameExist(User user) {
		User u = userDao.getUserByUsername(user.getUsername());
		return (u == null || user.getId() == u.getId());
	}

}
