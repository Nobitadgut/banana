package utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

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
			bw = new BufferedWriter(new FileWriter(URLConstant.getFilePath()));// 读取原始json文件
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
			br = new BufferedReader(new FileReader(URLConstant.getFilePath()));// 读取原始json文件
			StringBuffer sb = new StringBuffer();
			String s = null;
			while ((s = br.readLine()) != null) {
				sb.append(s.trim());
			}
			System.out.println(sb.toString());
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
	 * 检查文件是否存在，不存在则创建
	 */
	public static boolean checkOrCreateFile(String path) throws IOException {
		File f = new File(path);

		File fp = f.getParentFile();
		if (!fp.exists()) {
			fp.mkdirs();
		}

		if (!f.exists()) {
			return f.createNewFile();
		} else {
			return true;
		}
	}

	/**
	 * 获取下一个端口
	 */
	public static String getTheNextPort() {
		BufferedReader br = null;
		try {

			if (!checkOrCreateFile(URLConstant.getPortPath())) {
				throw new RuntimeException("the FilePath of port isn't exist");
			}

			br = new BufferedReader(new FileReader(URLConstant.getPortPath()));
			if (null != br) {

				String port = br.readLine();

				if (null == port) {
					port = "443";
				}

				port = port.trim();

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
			e.printStackTrace();
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
		boolean portAvailable = CommonUtils.getInstance().isPortAvailable(Integer.parseInt(port));
		return portJson.isNull(port) && portAvailable;
	}

	/**
	 * 记录最大端口
	 */
	public static void recordPort(@NotNull String port) {
		BufferedWriter bw = null;
		try {
			bw = new BufferedWriter(new FileWriter(URLConstant.getPortPath()));
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
