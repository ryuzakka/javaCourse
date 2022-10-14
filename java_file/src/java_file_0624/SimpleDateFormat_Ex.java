package java_file_0624;

import java.text.SimpleDateFormat;
import java.util.Date;

public class SimpleDateFormat_Ex {

	public static void main(String[] args) {
		// 
		Date today = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(sdf.format(today));

		sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
		System.out.println(sdf.format(today));
		
		sdf = new SimpleDateFormat("YY-MM-dd");
		System.out.println(sdf.format(today));
		
		sdf = new SimpleDateFormat("HH시 mm분 ss초");
		System.out.println(sdf.format(today));
		
		sdf = new SimpleDateFormat("오늘은 E요일");
		System.out.println(sdf.format(today));
		
		sdf = new SimpleDateFormat("오늘은 올해의 D번째 날");
		System.out.println(sdf.format(today));
		
		

	}

}
