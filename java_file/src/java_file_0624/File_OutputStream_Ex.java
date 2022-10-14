package java_file_0624;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class File_OutputStream_Ex {

	public static void main(String[] args) throws Exception {
		// byte 단위로 파일에 쓰기
		
		FileOutputStream fos = new FileOutputStream("e:/output.txt");
		
		String str = "Hello!! World!";
		byte[] output = str.getBytes();	// 문자열을 byte배열로 변환
		
		fos.write(output);
		
		fos.close();
	}

}
