package java_file_0624;

import java.text.MessageFormat;

public class MessageFormat_Ex {

	public static void main(String[] args) {
		
		String[] name = {"스파이더맨", "앤트맨", "배트맨", "누드맨"};
		String[] kor = {"89", "90", "60", "70"};
		String[] eng = {"40", "70", "80", "40"};
		String[] mat = {"70", "60", "99", "88"};
		
		String output = "이름:{0}, 국어:{1}, 영어:{2}, 수학:{3}";
		
		for(int i=0; i<name.length; i++) {
			String result = MessageFormat.format(output, name[i], kor[i], eng[i], mat[i]);
			System.out.println(result);
		}

	}

}
