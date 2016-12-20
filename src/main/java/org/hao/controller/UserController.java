package org.hao.controller;

import java.util.List;

import org.hao.model.User;
import org.hao.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/users")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="", method = RequestMethod.GET)
	public String getUsers(ModelMap map) {
		
		List<User> users = userService.getAllUsers();
		map.put("users", users);
		
		return "users";
	}
	
	@RequestMapping(value="/{username}", method = RequestMethod.POST)
	public String createUser(ModelMap map, User user, @PathVariable String username) {
		
		
		
		return "redirect: /users";
	}
}
