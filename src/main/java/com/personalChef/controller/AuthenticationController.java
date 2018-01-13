package com.personalChef.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AuthenticationController {

	@RequestMapping("/sayHelloWorld")
	public String test() {
		return "Hello World";
	}
	
	@RequestMapping(value ="/show-login", method=RequestMethod.GET)
	public ModelAndView showLoginPage(Model model) {
		System.out.println("Show login page");
		return new ModelAndView("login");
	}
	
}
