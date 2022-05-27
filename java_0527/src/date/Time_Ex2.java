package date;

import java.time.LocalDate;

public class Time_Ex2 {

	public static void main(String[] args) {
		/* 날짜 관련 라이브러리 */
		// LocalDate 클래스
		
		// 오늘 기준으로 이전, 이후의 날짜를 알아내기
		LocalDate today = LocalDate.now();
		int year = today.getYear();
		int month = today.getMonthValue();
		int date = today.getDayOfMonth();
		System.out.println(year+"년 "+month+"월 "+date+"일");
		
		LocalDate dday = today.plusDays(1000);
		int year2 = dday.getYear();
		int month2 = dday.getMonthValue();
		int date2 = dday.getDayOfMonth();
		System.out.println(year2+"년 "+month2+"월 "+date2+"일");
		
		LocalDate xday = today.minusDays(1000);
		int year3 = xday.getYear();
		int month3 = xday.getMonthValue();
		int date3 = xday.getDayOfMonth();
		System.out.println(year3+"년 "+month3+"월 "+date3+"일");
		
	}

}
