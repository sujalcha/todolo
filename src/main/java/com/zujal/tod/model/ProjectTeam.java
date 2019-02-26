package com.zujal.tod.model;

//import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

//@Entity
@Table(name = "ProjectTeam")
public class ProjectTeam {
	@Id
	private int project_id;
//	private int team_id;
//	private String team_name;
}
