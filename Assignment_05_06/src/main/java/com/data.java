package com;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class data {
    @Id
	private int id;
	private String name,email,framework;
	public String getFramework() {
		return framework;
	}
	public void setFramework(String framework) {
		this.framework = framework;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "data [id=" + id + ", name=" + name + ", email=" + email + ", framework=" + framework + "]";
	}	
}
