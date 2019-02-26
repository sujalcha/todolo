package com.zujal.tod.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="mytable")
public class user {
	
	@Id
	private int id;
	private String username;
	private String firstname;
	private String lastname;
	private String age;
	private String password;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public user()
	{
		
	};
	
	public user(String username, String firstname, String lastname, String age, String password) {
		super();
		this.username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "user [id=" + id + ", username=" + username + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", age=" + age + ", password=" + password + "]";
	}
	
	

}
