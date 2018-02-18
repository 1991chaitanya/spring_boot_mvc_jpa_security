package com.personalChef.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.personalChef.entities.Chef;

@Repository
public interface ChefRepo extends JpaRepository<Chef, Long>{

	@Override
	 List<Chef> findAll();
	
	
}
