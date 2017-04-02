import java.io.BufferedReader;
import java.io.InputStreamReader;

import utils.CommonUtils;
import utils.FileUtils;

public class test {
	public static void main(String[] args) {
		
		
		
		test3();
	}

	public static void test1() {
		String newPort = FileUtils.getTheNextPort();
		String pwd = CommonUtils.getPassWordOne(10);
		FileUtils.addUser(newPort, pwd);
		FileUtils.recordPort(newPort);
	}

	public static void test2() {
		System.out.println(CommonUtils.getInstance().isPortAvailable(8080));
	}

	public static void test3() {

		try {
			String commands = "calc";

			Runtime.getRuntime().exec(commands);

		} catch (java.io.IOException e) {

			System.err.println("IOException " + e.getMessage());
			
		}
	}

}
