package org.hao.service;

import java.util.List;

import org.hao.model.User;

public interface UserService {
	
	void addUser(User user);
	
	void deleteUserById(int id);
    
    void updateUser(User user);
    
    List<User> getAllUsers(); 

	User findUserById(int id);
    
    User findUserByUsername(String username);
     
    void deleteAllUsers();
     
    public boolean isUsernameExist(User user);
}
