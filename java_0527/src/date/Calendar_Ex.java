package date;

import java.util.Calendar;

public class Calendar_Ex {

	public static void main(String[] args) {
		/* 날짜 관련 라이브러리 */
		
		// Calendar 클래스
		Calendar today = Calendar.getInstance();
		
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONTH)+1; // 월을 가져와서 리턴 => 0 ~ 11 의 값을 리턴 
		int date = today.get(Calendar.DATE);
		System.out.println(year+"년 "+month+"월 "+date+"일");
		
		int hour = today.get(Calendar.HOUR);
		int min = today.get(Calendar.MINUTE);
		int sec = today.get(Calendar.SECOND);
		System.out.println(hour+"시 "+min+"분 "+sec+"초");
		
		int week = today.get(Calendar.DAY_OF_WEEK_IN_MONTH);
		int day = today.get(Calendar.DAY_OF_WEEK); // 1 ~ 7 의 값 리턴
		char y = ' ';
		switch(day) {
		case 1: y='일'; break;
		case 2: y='월'; break;
		case 3: y='화'; break;
		case 4: y='수'; break;
		case 5: y='목'; break;
		case 6: y='금'; break;
		default: y='토';
		}
		System.out.println(week+"주 "+y+"요일");
		
	}

}
