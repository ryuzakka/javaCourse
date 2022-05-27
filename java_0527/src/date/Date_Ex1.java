package date;

import java.util.Date;

public class Date_Ex1 {

	public static void main(String[] args) {
		/* 날짜 관련 라이브러리 */ 
		
		// Date 클래스 (java.util)
		Date today = new Date();
		
		int year = today.getYear() + 1900;	// 연도를 가져와서 리턴해주는 메소드 => 1900년 부터 시작
		int month = today.getMonth() + 1;	// 월을 가져와서 리턴 => 0 ~ 11 의 값을 리턴
		int date = today.getDate();			// 이을 가져와서 리턴
		System.out.println(year+"년 "+month+"월 "+date+"일");
		
		int hour = today.getHours();	// 현재 시간 시를 리턴해주는 메소드
		int min = today.getMinutes();	// 현재 시간 분을 리턴해주는 메소드
		int sec = today.getSeconds();	// 현재 시간 초를 리턴해주는 메소드
		System.out.println(hour+"시 "+min+"분 "+sec+"초");
		
		int day = today.getDay();	// 0 ~ 6 의 요일 값을 리턴 : 0 = 일요일
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
		
	}
	
}
