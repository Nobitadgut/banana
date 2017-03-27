package com.gd.test.component.demo.constant;

public class URLConstant {
	private static boolean isLinux = false;
	private static final String WindowFilePath = "C:\\Users\\Administrator\\Desktop\\shadowsocks\\shadowsocks.json";
	private static final String LinuxFilePath = "/etc/shadowsocks.json";
	private static final String WindowFileOutPutPath = "C:\\Users\\Administrator\\Desktop\\shadowsocks\\shadowsocks_copy.json";
	private static final String LinuxFileOutPutPath = "/etc/shadowsocks_copy.json";
	private static final String WindowPortPath = "C:\\Users\\Administrator\\Desktop\\shadowsocks\\sss\\sada\\dsada\\port.txt";
	private static final String LinuxPortPath = "/opt/shadowsocksConfig/port.txt";

	public static String getFilePath() {
		if (isLinux) {
			return LinuxFilePath;
		} else {
			return WindowFilePath;
		}
	}

	public static String getFileOutPutFilePath() {
		if (isLinux) {
			return LinuxFileOutPutPath;
		} else {
			return WindowFileOutPutPath;
		}
	}

	public static String getPortPath() {
		if (isLinux) {
			return LinuxPortPath;
		} else {
			return WindowPortPath;
		}
	}
}
