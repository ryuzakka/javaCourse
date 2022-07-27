package dao;

import java.time.LocalDate;

public class temp {

	public static void main(String[] args) {
		
		LocalDate today = LocalDate.now();
		LocalDate dday = LocalDate.of(2022, 7, 28);
		
		System.out.println("isAfter : "+today.isAfter(dday));
		System.out.println("isBefore : "+today.isBefore(dday));
		System.out.println("isEqual : "+today.isEqual(dday));
		

	}

}
