package com.gd.test.component.demo.bean;

public class User {
	public int id;
	public String user_port;
	public String user_password;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser_port() {
		return user_port;
	}

	public void setUser_port(String user_port) {
		this.user_port = user_port;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	@Override
	public String toString() {
		return "User [user_port=" + user_port + ", user_password=" + user_password + "]";
	}

}
