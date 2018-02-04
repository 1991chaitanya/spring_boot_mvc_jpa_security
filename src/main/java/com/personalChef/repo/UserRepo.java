package com.personalChef.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.personalChef.entities.User;

@Repository
public interface UserRepo extends JpaRepository<User, String>{

	User findByUsername(String username);
	
}
