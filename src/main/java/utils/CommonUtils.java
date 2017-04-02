package utils;

import java.util.Random;

public class CommonUtils {
	/**
	 * 生成随机密码生成方式一 密码字典 -> 随机获取字符
	 * 
	 * @param len
	 *            生成密码长度
	 * @return
	 */
	public static String getPassWordOne(int len) {
		int i; // 生成的随机数
		int count = 0; // 生成的密码的长度
		// 密码字典
		char[] str = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e',
				'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
		StringBuffer stringBuffer = new StringBuffer("");
		Random r = new Random();
		while (count < len) {
			// 生成 0 ~ 密码字典-1之间的随机数
			i = r.nextInt(str.length);
			stringBuffer.append(str[i]);
			count++;
		}
		return stringBuffer.toString();
	}
}
