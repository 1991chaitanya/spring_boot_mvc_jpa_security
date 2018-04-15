package com.personalChef.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.personalChef.entities.Chef;
import com.personalChef.repo.TestRepo;

@Controller
public class TestController {

	@Autowired
	private TestRepo testRepo;
	
	@RequestMapping(value = "/test/{id}", method = RequestMethod.GET )
	public @ResponseBody Chef test(@PathVariable("id") long id) {
	   	return testRepo.findById(id);
	}
	
}
