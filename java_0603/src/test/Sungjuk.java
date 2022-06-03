package test;

import java.util.Scanner;

public class Sungjuk {

	/*
		성적처리를 위한 클래스를 제작하려고 한다. 아래의 조건에 맞게 설계하여 제출하시오.
		1. 클래스 이름은 Sungjuk 이라 한다.
		2. 국어, 영어, 수학을 콘솔창에서 입력을 받는 메소드를 만든다.
		3. 평균을 콘솔창에 출력하는 메소드를 만든다.
	 */
	
	int kor;
	int eng;
	int mat;
	
	public void input() {	// 2. 국어, 영어, 수학을 콘솔창에서 입력을 받는 메소드
		Scanner sc = new Scanner(System.in);
		this.kor = sc.nextInt();
		this.eng = sc.nextInt();
		this.mat = sc.nextInt();
	}
	
	public void output() {	// 3. 평균을 콘솔창에 출력하는 메소드
		int sum = kor + eng + mat;
		int avg = sum / 3;
		System.out.println("평균 : " + avg);
	}
}
