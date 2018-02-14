package com.personalChef.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.personalChef.entities.User;
import com.personalChef.repo.UserRepo;

@Service
public class UserService {

	@Autowired
	private UserRepo userRepo;
	
	public User findByUsername(String username) {
		return userRepo.findByUsername(username);
	}
	
	public User save(User user) {
		return userRepo.save(user);
	}
}
