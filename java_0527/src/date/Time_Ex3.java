package date;

import java.time.LocalDate;

public class Time_Ex3 {

	public static void main(String[] args) {
		/* 날짜 관련 라이브러리 */
		// LocalDate 클래스
		LocalDate today = LocalDate.now();	// 오늘 날짜 기준
						
		// 특정일 기준으로 이전, 이후의 날짜를 알아내기
		LocalDate anni = LocalDate.of(2020, 5, 30);	// 특정일
		LocalDate dday = anni.plusDays(1000);
		int year = dday.getYear();
		int month = dday.getMonthValue();
		int date = dday.getDayOfMonth();
		System.out.println(year+"년 "+month+"월 "+date+"일");
		
	}

}
