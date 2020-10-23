package com.mindtree.gurpartapcattlefeed.service;

import java.util.List;

import com.mindtree.gurpartapcattlefeed.entity.User;

public interface UserService {

	public User saveUser(User user);
	
	public User findByEmail(String email);
	
	public List<User> allUsers();
}
