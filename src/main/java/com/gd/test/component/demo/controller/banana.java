package com.gd.test.component.demo.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.gd.test.component.demo.bean.User;
import com.gd.test.component.demo.service.IBananaService;

@Controller
@RequestMapping("/doit")
public class banana {

	@Resource
	private IBananaService bananaService;

	@RequestMapping("/getJson")
	@ResponseBody
	public @JSONField String getJson() throws Exception {
		System.out.println(bananaService.getJson());
		return bananaService.getJson();
	}

	@RequestMapping("/getAllUser")
	public @ResponseBody List<User> getAllUser() throws Exception {
		return bananaService.getAllUser();
	}

	@RequestMapping("/addUser")
	public @ResponseBody User addUser() throws Exception {
		return bananaService.addUser();
	}
}
