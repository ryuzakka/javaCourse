package date;

import java.time.LocalDateTime;

public class Time_Ex1 {

	public static void main(String[] args) {
		/* 날짜 관련 라이브러리 */
		
		// LocalDateTime 클래스
		LocalDateTime today = LocalDateTime.now();	// now()메소드 안에 new 연산자가 포함되어 있음.
		
		int year = today.getYear();
		int month = today.getMonthValue();
		int date = today.getDayOfMonth();
		System.out.println(year+"년 "+month+"월 "+date+"일");
		
		int hour = today.getHour();
		int min = today.getMinute();
		int sec = today.getSecond();
		System.out.println(hour+"시 "+min+"분 "+sec+"초");
		
		int day = today.getDayOfWeek().getValue();	// 0 ~ 6
		char y = ' ';
		switch(day) {
		case 0: y='일'; break;
		case 1: y='월'; break;
		case 2: y='화'; break;
		case 3: y='수'; break;
		case 4: y='목'; break;
		case 5: y='금'; break;
		default: y='토';
		}
		System.out.println(y+"요일");
		
		System.out.println(today.getMonth());	// 문자열로 리턴
		System.out.println(today.getDayOfWeek());	// 문자열로 리턴
		
	}

}
