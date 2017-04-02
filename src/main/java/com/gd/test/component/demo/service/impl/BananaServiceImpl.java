package com.gd.test.component.demo.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gd.test.component.demo.bean.User;
import com.gd.test.component.demo.dao.IBananaDao;
import com.gd.test.component.demo.service.IBananaService;

@Service("bananaService")
public class BananaServiceImpl implements IBananaService {

	@Resource
	private IBananaDao bananaDao;

	@Override
	public String getJson() {
		System.out.println(bananaDao.toString());
		return bananaDao.getJson()                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ;
	}

	@Override
	public User addUser() {
		return bananaDao.addUser();
	}

}
