package java_file_0624;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class File_Copy2 {

	public static void main(String[] args) throws Exception {
		// 2진파일 복사
		
		FileInputStream fis = new FileInputStream("e:/btn1.png");
		FileOutputStream fos = new FileOutputStream("e:/new_btn.png");
		
		byte[] temp = new byte[200];
		int chk;
		
		while( (chk = fis.read(temp)) != -1 ) {
			fos.write(temp);
		}
		
		fis.close();
		fos.close();

	}

}
