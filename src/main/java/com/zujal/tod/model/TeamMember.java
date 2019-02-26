package com.zujal.tod.model;

//import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

//@Entity
@Table(name = "TeamMember")
public class TeamMember {
	@Id
	private int team_id;
	//private int teammem_id;
//	private String teammem_name;
//	private String teammem_position;

}
