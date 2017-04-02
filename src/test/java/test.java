import utils.CommonUtils;
import utils.FileUtils;

public class test {
	public static void main(String[] args) {
		test1();
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
}
