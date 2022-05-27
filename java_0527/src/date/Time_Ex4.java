package date;

import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

public class Time_Ex4 {

	public static void main(String[] args) {
		/* 날짜 관련 라이브러리 */
		// LocalDate 클래스
		
		// 특정일(x)과 특정일(y) 비교
		LocalDate xday = LocalDate.of(1993, 5, 5);
		LocalDate yday = LocalDate.now();
		
		long day = xday.until(yday,ChronoUnit.DAYS);
		System.out.println(day);
						
	}

}
