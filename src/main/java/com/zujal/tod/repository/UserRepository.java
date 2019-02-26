package com.zujal.tod.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.zujal.tod.model.user;

public interface UserRepository extends CrudRepository<user, Integer> {

	public user findByUsernameAndPassword(String username, String password);
	public user findByid(int id);
	

}
