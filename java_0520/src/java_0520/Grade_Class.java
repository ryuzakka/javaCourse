package java_0520;

import java.util.Scanner;

public class Grade_Class {
	// 객체지향
	// 클래스 => 속성과 메소드로 구성됨.

	// 속성(변수)
	Scanner sc = new Scanner(System.in);
	int kor, eng, mat;
	int sum, avg;
	
	// 메소드(기능)
	public void test() {
		kor = sc.nextInt();
		eng = sc.nextInt();
		mat = sc.nextInt();
		
		sum = kor + eng + mat;
		avg = sum/3;
		
		System.out.println(sum + " " + avg);
	}
}
