package com.personalChef.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.personalChef.entities.User;
import com.personalChef.service.UserService;

@RestController
public class AuthenticationController {
	
	@Autowired
	private UserService userService;

	@RequestMapping("/sayHelloWorld")
	public String test() {
		return "Hello World";
	}
	
	@RequestMapping(value ="/show-login", method=RequestMethod.GET)
	public ModelAndView showLoginPage(Model model) {
		System.out.println("Show login page");
		return new ModelAndView("login");
	}
	
	
	@RequestMapping(value ="/show-home", method=RequestMethod.GET)
	public ModelAndView showHomePage(Model model) {
		System.out.println("Show Home page");
		ModelAndView modelAndView = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findByUsername(auth.getName());
		//modelAndView.addObject("userName", "Welcome " + user.getName() + " " + user.getLastName() + " (" + user.getEmail() + ")");
		//modelAndView.addObject("adminMessage","Content Available Only for Users with Admin Role");
		modelAndView.setViewName("home");
		return modelAndView;
		//return new ModelAndView("home");
	}
	
	
}
