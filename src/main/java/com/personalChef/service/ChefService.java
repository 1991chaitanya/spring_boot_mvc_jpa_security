package com.personalChef.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.personalChef.entities.Chef;
import com.personalChef.repo.ChefRepo;

@Service
public class ChefService {

	@Autowired
	private ChefRepo chefRepo;

	public List<Chef> fetchChefs() {
		return chefRepo.findAll();
	}


}
