package org.hao.controller;

import java.util.List;

import org.hao.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/users")
public class UserController {
/*	
	@Autowired
	
	@RequestMapping(value={"","/users"}, method = RequestMethod.GET)
	public String getUsers(ModelMap map) {
		
		return "users";
	}
	
	@RequestMapping(value="/users", method = RequestMethod.POST)
	public String createUser(ModelMap map, User user) {
		
		
		return "redirect: /users";
	}
*/
}
