package java_0517;

import java.util.Scanner;

public class Input4 {

	public static void main(String[] args) {
		
		// 국어, 영어, 수학 3과목의 점수를 입력받기
		int kor, eng, mat;
		
		Scanner sc = new Scanner(System.in);
		System.out.print("국어: ");
		kor = sc.nextInt();
		System.out.print("영어: ");
		eng = sc.nextInt();
		System.out.print("수학: ");
		mat = sc.nextInt();
		
		// 점수의 합을 출력하기
		System.out.println();
		System.out.println("국어 점수는 " + kor + "입니다.");
		System.out.println("영어 점수는 " + eng + "입니다.");
		System.out.println("수학 점수는 " + mat + "입니다.");
		System.out.println("3과목의 합계점수는 " + (kor+eng+mat) + "입니다.");
		
		// 점수의 평균을 출력하기
		int avg = (kor + eng + mat) / 3;
		System.out.println();
		System.out.println("3과목의 평균점수는 " + avg + "입니다.");

	}

}
