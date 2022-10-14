package java_file_0624;

import java.io.FileNotFoundException;
import java.io.FileReader;

public class File_Reader_Ex2 {

	public static void main(String[] args) throws Exception {
		
		// char 단위로 파일의 내용을 읽기
		FileReader fr1 = new FileReader("C:/kr.co.raon.touchenex.json");
		
		char[] input = new char[200];
		
		String data = "";
		int chk;
		
		while( (chk=fr1.read(input)) != -1 ) {
			data += new String(input, 0, chk);
		}
		
		System.out.println(data);
		
		fr1.close();

	}

}
