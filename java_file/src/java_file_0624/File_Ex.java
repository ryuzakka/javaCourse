package java_file_0624;

import java.io.File;	// io 에 있는 File 클래스

public class File_Ex {

	public static void main(String[] args) {
		
		// 파일을 복사, 삭제 등을 할 수 있는 클래스를 활용
		// => 파일이나 디렉토리에 접근을 할 수 있다
		
		File file = new File("c:/2205java/");	// 생성자에는 폴더나 파일을 인수로 전달
		
		System.out.println(file.exists());
		System.out.println(file.isDirectory());
		System.out.println(file.isFile());
		
		String[] flist = file.list();
		for(int i=0; i<flist.length; i++) {			
			System.out.println(flist[i]);
		}
	
	}

}
