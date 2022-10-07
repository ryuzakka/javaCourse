package file_access;

import java.io.File;

public class File_Class1 {

	public static void main(String[] args) {
		String path = "E:/coding_practice/madu_java_class";
		File f = new File(path);
		
		String[] flist = f.list();	// f객체에 있는 파일과 디렉토리를 문자열의 배열의 형태로 리턴
		
		System.out.println(flist.length);
		
		for(int i=0; i<flist.length; i++) {
			File ftemp = new File(path+"/"+flist[i]);
			
			if(ftemp.isDirectory())
				System.out.println("[DIR] " + flist[i]);
			else
				System.out.println("[FILE] " + flist[i]);
			
		}
	}

}
