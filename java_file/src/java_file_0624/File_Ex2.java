package java_file_0624;

import java.io.File;

public class File_Ex2 {

	public static void main(String[] args) {
		
		File file = new File("C:/Users/Administrator/Downloads/cos.jar");
		
		// file의 이름을 변경
		File file2 = new File("C:/Users/Administrator/Downloads/cos2.jar");
		// file.renameTo(file2);	// 권한 문제로 실행 불가
		// file2.delete();			// 권한 문제로 실행 불가
		
		
		File file3 = new File("C:\\Users\\전산세무회계시험\\Downloads\\File_Ex.txt");
		File file4 = new File("C:\\Users\\전산세무회계시험\\Downloads\\File_Ex2.txt");
		// file3.renameTo(file4);	// 실행 완료
		
		System.out.println(file4.exists());
		System.out.println(file4.length());		
		if(file4.exists()) {			
			file4.delete();
		}
		System.out.println(file4.exists());
		
		
	}

}
