package utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

import org.apache.log4j.chainsaw.Main;
import org.json.JSONObject;

import com.gd.test.component.demo.constant.URLConstant;
import com.sun.istack.internal.NotNull;

public class FileUtils {

	/**
	 * 往shadowsocks.json增加用户
	 * 
	 */
	public static void addUser(@NotNull String port, @NotNull String pwd) {
		JSONObject dataJson = getFileJson();
		BufferedWriter bw = null;
		try {
			bw = new BufferedWriter(new FileWriter(URLConstant.WindowFilePath));// 读取原始json文件
			JSONObject portData = dataJson.getJSONObject("port_password");
			portData.put(port, pwd);
			bw.write(dataJson.toString());
			bw.flush();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				bw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 获取shadowsocks.json文件的内容
	 * 
	 * @return
	 */
	public static JSONObject getFileJson() {
		JSONObject dataJson = null;
		BufferedReader br = null;
		try {
			br = new BufferedReader(new FileReader(URLConstant.WindowFilePath));// 读取原始json文件
			StringBuffer sb = new StringBuffer();
			String s = null;
			while ((s = br.readLine()) != null) {
				sb.append(s.trim());
			}
			dataJson = new JSONObject(sb.toString());// StringBuffer不能转为jsonObject
			return dataJson;
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * 获取下一个端口
	 */
	public static String getTheNextPort() {
		BufferedReader br = null;
		try {
			br = new BufferedReader(new FileReader(URLConstant.WindowPortPath));
			if (null != br) {

				String port = br.readLine().trim();
				if (null == port)
					return null;

				int portNum = Integer.parseInt(port);
				portNum++;

				// if the port has be used
				while (!checkPort(portNum + "")) {
					portNum++;
					System.out.println(portNum);
				}

				return portNum + "";
			}
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				br.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	/**
	 * 
	 * @return check the condition of port
	 */
	public static boolean checkPort(@NotNull String port) {
		JSONObject dataJson = getFileJson();
		JSONObject portJson = dataJson.getJSONObject("port_password");
		return portJson.isNull(port);
	}

	/**
	 * 记录最大端口
	 */
	public static void recordPort(@NotNull String port) {
		BufferedWriter bw = null;
		try {
			bw = new BufferedWriter(new FileWriter(URLConstant.WindowPortPath));
			bw.write(port);
			bw.flush();
		} catch (Exception e) {
		} finally {
			try {
				bw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
