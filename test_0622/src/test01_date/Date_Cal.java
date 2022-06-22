package test01_date;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

public class Date_Cal {
	/*
		1. 자바 표준 라이브러리를 이용하여 다음과 같은 클래스를 작성하시오.
			1) 클래스의 이름은 Date_Cal 이다
			2) getToday() 메소드는 오늘 날짜를 xxxx년 xx월 xx일입니다 로 출력한다.
			3) getDate() 메소드는 본인이 태어난 날부터 오늘까지의 총일수를 출력한다.
	
	 */
	public void getToday() {
		LocalDateTime today = LocalDateTime.now();
		
		int year = today.getYear();
		int month = today.getMonthValue();
		int date = today.getDayOfMonth();
		
		System.out.println("오늘 날짜는 "+ year +"년 "+ month +"월 "+ date +"일입니다.");
	}
	
	public void getDate() {
		LocalDate birth = LocalDate.of(1991, 1, 3);
		LocalDate today = LocalDate.now();
		
		long alive = birth.until(today, ChronoUnit.DAYS); 
		System.out.println("태어난 날부터 오늘까지 총 "+ alive +"일");
	}
	
}
