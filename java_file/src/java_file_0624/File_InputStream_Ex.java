package java_file_0624;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

public class File_InputStream_Ex {

	public static void main(String[] args) throws Exception {
		// byte 단위로 파일의 내용을 읽기 => 이진 파일을 읽을 수 있다.
		
		FileInputStream fis = new FileInputStream("e:/TestController.java");
		int chk;
		
		// txt 파일 읽기
//		while( (chk = fis.read()) != -1 ) {
//			System.out.print((char)chk);
//		}
		
		byte[] input = new byte[200];
		String data = "";
		
		while( (chk = fis.read(input)) != -1 ) {
			data += new String(input, 0, chk);
		}
		System.out.println(data);
		
	}

}
