package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="constructionstatus_table")
public class ConstructionStatusVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	
	@Column(name="constructionstatus_name")
	private String constructionstatusName;
	
	@Column(name="constructionstatus_description")
	private String constructionstatusDescription;
	
	@Column(name="status")
	private boolean status=true;

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getConstructionstatusName() {
		return constructionstatusName;
	}

	public void setConstructionstatusName(String constructionstatusName) {
		this.constructionstatusName = constructionstatusName;
	}

	public String getConstructionstatusDescription() {
		return constructionstatusDescription;
	}

	public void setConstructionstatusDescription(String constructionstatusDescription) {
		this.constructionstatusDescription = constructionstatusDescription;
	}

}
