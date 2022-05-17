package flowcontrol;

import java.util.Scanner;

public class If02 {

	public static void main(String[] args) {
		// 실행할 문장이 3개 이상일 경우 => if를 추가하여 처리
		// 국어점수를 입력받고 A,B,C,D,F로 출력하기
		
		System.out.println("*** 등급 시스템 ***");
		System.out.print("국어점수를 입력하시오 : ");
		Scanner sc = new Scanner(System.in);
		int kor = sc.nextInt();
		
		if (kor >= 90) {
			System.out.println("국어등급 : A");
		} else if (kor >= 80) {			
			System.out.println("국어등급 : B");
		} else if (kor >= 70) {
			System.out.println("국어등급 : C");			
		} else if (kor >= 60) {
			System.out.println("국어등급 : D");			
		} else {
			System.out.println("국어등급 : F");			
		}
		
	}

}
