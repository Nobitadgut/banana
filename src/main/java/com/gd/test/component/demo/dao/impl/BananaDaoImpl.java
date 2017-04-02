package com.gd.test.component.demo.dao.impl;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

import org.aspectj.util.FileUtil;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.gd.test.component.demo.bean.User;
import com.gd.test.component.demo.constant.URLConstant;
import com.gd.test.component.demo.dao.IBananaDao;

import utils.CommonUtils;
import utils.FileUtils;

@Service("bananaDao")
public class BananaDaoImpl implements IBananaDao {

	@Override
	public String getJson() {

		return getJsonFromFile();
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

		// 重启shadowsock服务

		CommonUtils.getInstance().restartShadowsock();

		user.user_password = pwd;
		user.user_port = newPort;

		return user;
	}

	private String getJsonFromFile() {
		HashMap<String, String> hashMap = new HashMap<>();
		JSONObject dataJson = null;
		BufferedReader br = null;
		try {
			br = new BufferedReader(new FileReader(URLConstant.getFilePath()));// 读取原始json文件
			// BufferedWriter bw = new BufferedWriter(new
			// FileWriter(URLConstant.WindowFileOutPutPath));// 读取原始json文件
			StringBuffer sb = new StringBuffer();
			String s = null;
			while ((s = br.readLine()) != null) {
				sb.append(s.trim());
			}
			dataJson = new JSONObject(sb.toString());// StringBuffer不能转为jsonObject
			JSONObject portData = dataJson.getJSONObject("port_password");
			Iterator<String> it = portData.keys();
			while (it.hasNext()) {
				String key = it.next();
			}
			// portData.put("446", "dddddddddddddddd");

			System.out.println(dataJson.toString());

			// bw.write(dataJson.toString());
			// bw.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				br.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return dataJson.toString();
	}

}
