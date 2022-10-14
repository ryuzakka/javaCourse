package java_file_0624;

import java.io.FileWriter;
import java.io.IOException;

public class File_Writer_Ex {

	public static void main(String[] args) throws Exception {
		// 텍스트파일에 저장하기
		
		FileWriter fw = new FileWriter("e:/a.txt");	// 이전 내용을 지우고 새로 쓴다.
		fw.write("Hello");
		fw.close();
		
		FileWriter fw2 = new FileWriter("e:/b.txt");
		String str = "울퉁불퉁 멋진 몸매에 빨간 옷을 입고 새콤달콤 향내 풍기는 멋쟁이 토마토";
		char[] tt = str.toCharArray();
		fw2.write(tt);
		fw2.close();
		
		FileWriter fw3 = new FileWriter("e:/a.txt", true);
		fw3.write(" World !");
		fw3.close();

	}

}
