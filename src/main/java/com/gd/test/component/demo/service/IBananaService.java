package com.gd.test.component.demo.service;

import java.util.List;

import com.gd.test.component.demo.bean.User;

public interface IBananaService {
	String getJson();

	User addUser();

	List<User> getAllUser() throws Exception;
}
