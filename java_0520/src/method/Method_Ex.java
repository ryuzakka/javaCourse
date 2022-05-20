package method;

import java.util.Scanner;

public class Method_Ex {
	// 국어, 영어 점수를 입력받아서 평균을 구하여 출력하기
	// 메소드 4가지 형태 모두 만들기
	
	Scanner sc = new Scanner(System.in);
	
	public void score1() {
		int kor, eng;
		int sum, avg;
		kor = sc.nextInt();
		eng = sc.nextInt();
		sum = kor+eng;
		avg = sum/2;
		System.out.println("매개변수X, 리턴X : 평균 = " + avg);
	}
	
	public void score2(int a, int b) {
		int sum, avg;
		sum = a + b;
		avg = sum/2;
		System.out.println("매개변수O, 리턴X : 평균 = " + avg);
	}
	
	public int score3() {
		int kor, eng;
		int sum, avg;
		kor = sc.nextInt();
		eng = sc.nextInt();
		sum = kor + eng;
		avg = sum/2;
		return avg;
	}
	public int score4(int a, int b) {
		int sum, avg;
		sum = a + b;
		avg = sum/2;
		return avg;
	}
	
}
