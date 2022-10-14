package java_file_0624;

import java.io.FileNotFoundException;
import java.io.FileReader;

public class File_Reader_Ex {

	public static void main(String[] args) throws Exception {
		
		// char 단위로 파일의 내용을 읽기
		String path = "C:\\Users\\Ryu\\Pictures\\Saved Pictures";
		FileReader fr1 = new FileReader("C:/kr.co.raon.touchenex.json");
		
//		int read1 = fr1.read();	// 하나의 문자만 읽어서 ASCII 값으로 반환
//		System.out.println(read1);
		
		String data = "";
		while(fr1.ready()) {
			data += (char)fr1.read();
		}
		System.out.println(data);
		
		fr1.close();

	}

}
