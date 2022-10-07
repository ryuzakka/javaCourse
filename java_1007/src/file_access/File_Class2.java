package file_access;

import java.io.File;

public class File_Class2 {

	public static void main(String[] args) {
		String path = "E:/coding_practice/madu_java_class/btn1.png";
		File f = new File(path);
		
		System.out.println(f.exists() ? "존재" : "없음");
		System.out.println(f.isFile() ? "파일" : "파일이 아닙니다");
		System.out.println(f.canWrite() ? "수정가능" : "수정불가");
		System.out.println(f.canRead() ? "읽기가능" : "읽기불가");
		System.out.println(f.isAbsolute() ? "절대경로" : "상대경로");
		System.out.println(f.lastModified());	// 마지막 수정된 시간 (밀리초)
		System.out.println(f.length() + " byte");	// byte크기
		
		f.renameTo(new File("E:/coding_practice/madu_java_class/btn.png"));
		
	}

}
