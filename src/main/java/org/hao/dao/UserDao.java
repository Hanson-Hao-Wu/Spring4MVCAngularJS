package org.hao.dao;

import java.util.List;

import org.hao.model.User;

public interface UserDao {
	
	User getUserById(int id);
	
	void saveUser(User user);
	
	void deleteUserById(int id);
	
	List<User> getAllUsers();
	
	User getUserByUsername(String username);

}
