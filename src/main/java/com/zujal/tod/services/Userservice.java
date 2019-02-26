package com.zujal.tod.services;

import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.zujal.tod.model.user;
import com.zujal.tod.repository.UserRepository;

import java.util.List;

@Service
@Transactional
public class Userservice {

	private final UserRepository userrepository;
	
	public Userservice(UserRepository userrepository)
	{
		this.userrepository=userrepository;
	};
	
	public void savemyuser(user user)

	{
		userrepository.save(user);
	}
	
	
	public List<user> showAllUsers(){
		List<user> users = new ArrayList<user>();
		for(user user : userrepository.findAll()) {
			users.add(user);
		}
		
		return users;
	}
	
	public void deleteMyUser(int id) {
		userrepository.deleteById(id);
	}
	
	public user editUser(int id) {
		return userrepository.findByid(id);
	}
	
	public user findByUsernameAndPassword(String username, String password) {
		return userrepository.findByUsernameAndPassword(username, password);
	}
	
}
