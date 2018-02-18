package com.personalChef.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.personalChef.entities.Chef;
import com.personalChef.service.ChefService;

@RestController
public class HomeController {
	
	@Autowired
	private ChefService chefService;

	@RequestMapping(value="/chefs", method=RequestMethod.GET)
	public @ResponseBody List<Chef> fetchChefs() {
		System.out.println("Fetching all the chefs...");
		List<Chef> allChefs = chefService.fetchChefs();
		System.out.println("all the chefs..."+allChefs);
		return allChefs;
	}
}
