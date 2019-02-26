package com.zujal.tod.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zujal.tod.model.user;
import com.zujal.tod.services.Userservice;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private Userservice userservice;
	@GetMapping("/")
	public String hello() {
		return "This is home page";
	}
	
	@GetMapping("/saveuser")
	public String saveuser(@RequestParam String username, @RequestParam String firstname,@RequestParam String lastname, @RequestParam String age, @RequestParam String password)
	{
		
		user user = new user(username,firstname,lastname,age,password);
		userservice.savemyuser(user);
		return "User Saved";
	}
}
