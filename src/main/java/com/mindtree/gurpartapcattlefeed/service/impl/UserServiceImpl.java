package com.mindtree.gurpartapcattlefeed.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.gurpartapcattlefeed.entity.User;
import com.mindtree.gurpartapcattlefeed.repository.UserRepository;
import com.mindtree.gurpartapcattlefeed.service.UserService;
@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	UserRepository userRepository;
	@Override
	public User saveUser(User user) {
		return this.userRepository.save(user);
	}
	@Override
	public User findByEmail(String email) {
		return this.userRepository.findByuserEmail(email);
		
	}
	@Override
	public List<User> allUsers() {
		
		return this.userRepository.findAll();
	}

}
