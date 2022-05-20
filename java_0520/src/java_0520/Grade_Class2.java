package java_0520;

import java.util.Scanner;

public class Grade_Class2 {
	
	// 속성
	Scanner sc = new Scanner(System.in);
	int kor, eng, mat;	// 클래스 내에서 선언된 변수 = 전역변수, 멤버변수
	int sum, avg;
	
	// 메소드
	public void input() {	// 1. 점수 입력
		int test;	// 메소드 내에서 선언된 변수 = 지역변수
		kor = sc.nextInt();
		eng = sc.nextInt();
		mat = sc.nextInt();
	}
	public void cal() {		// 2. 계산
		sum = kor + eng + mat;
		avg = sum/3;
		
	}
	public void output() {	// 3. 출력
		System.out.println(sum + " " + avg);
	}

}
