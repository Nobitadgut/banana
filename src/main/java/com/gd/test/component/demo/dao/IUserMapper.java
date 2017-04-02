package com.gd.test.component.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.gd.test.component.demo.bean.User;

public interface IUserMapper {
	List<User> getAllUsers() throws Exception;

	void addUser(String user_port, String user_password);
}
