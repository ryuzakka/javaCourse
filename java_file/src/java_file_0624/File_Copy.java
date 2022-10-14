package java_file_0624;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;

public class File_Copy {

	public static void main(String[] args) throws Exception {
		// read + write = copy
		
		FileReader fr1 = new FileReader("e:/a.txt");
		FileReader fr2 = new FileReader("e:/b.txt");
		FileWriter fw = new FileWriter("e:/temp.txt");
		// txt 파일만 복사 가능
		// 이진파일은 복사는 되지만 기능을 상실함
		
		char[] input = new char[200];
		String data = "";
		int chk;
		
		while( (chk = fr1.read(input)) != -1 ) {
			data += new String(input, 0, chk);
		}
		while( (chk = fr2.read(input)) != -1 ) {
			data += new String(input, 0, chk);
		}
		
		fw.write(data);
		
		fr1.close();
		fr2.close();
		fw.close();

	}

}
