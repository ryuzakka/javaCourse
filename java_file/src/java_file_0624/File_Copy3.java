package java_file_0624;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class File_Copy3 {

	public static void main(String[] args) throws Exception {
		// buffer 사용
		
		FileInputStream fis = new FileInputStream("e:/btn1.png");
		FileOutputStream fos = new FileOutputStream("e:/new_btn.png");
		
		BufferedInputStream bis = new BufferedInputStream(fis);		// 생성자에 FileInputStream 객체를 전달해야함
		BufferedOutputStream bos = new BufferedOutputStream(fos);	// 생성자에 FileOutputStream 객체를 전달해야함
		
		byte[] temp = new byte[200];
		int chk;
		
		long t1 = System.currentTimeMillis();
		
		while( (chk = bis.read(temp)) != -1 ) {
			bos.write(temp);
		}
		
		long t2 = System.currentTimeMillis();
		System.out.println(t2-t1);
		
		fis.close();
		fos.close();
		bis.close();

	}

}
