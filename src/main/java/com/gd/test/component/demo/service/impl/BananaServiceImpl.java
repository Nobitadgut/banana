package com.gd.test.component.demo.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gd.test.component.demo.bean.User;
import com.gd.test.component.demo.dao.IBananaDao;
import com.gd.test.component.demo.dao.IUserMapper;
import com.gd.test.component.demo.service.IBananaService;

import utils.CommonUtils;
import utils.FileUtils;

@Service("bananaService")
public class BananaServiceImpl implements IBananaService {

	@Resource
	private IBananaDao bananaDao;
	@Resource
	private IUserMapper userMapper;

	@Override
	public String getJson() {
		System.out.println(bananaDao.toString());
		return bananaDao.getJson();
	}

	@Override
	public User addUser() {

		User user = new User();

		String newPort = FileUtils.getTheNextPort();
		String pwd = CommonUtils.getPassWordOne(10);

		if (newPort == null || pwd == null)
			return null;

		FileUtils.addUser(newPort, pwd);
		FileUtils.recordPort(newPort);
		userMapper.addUser(newPort, pwd);
		// 重启shadowsock服务

		CommonUtils.getInstance().restartShadowsock();

		user.user_password = pwd;
		user.user_port = newPort;

		return user;
	}

	@Override
	public List<User> getAllUser() throws Exception {
		List<User> userlist = userMapper.getAllUsers();
		for (int i = 0; i < userlist.size(); i++) {
			System.out.println(userlist.get(i).user_port);
		}
		return userlist;
	}

}
