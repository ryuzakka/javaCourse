package flowcontrol;

import java.util.Scanner;

public class Ex2 {

	public static void main(String[] args) {
		/*
		 * [ 연습문제2 ]
		 * 극장에 A석, B석, C석, D석이 있다고 하자
		 * 나이를 입력받아서 20세 미만이면 A석, 
		 * 20세 이상 30세 미만이면 B석,
		 * 30세 이상 40세 미만이면 C석,
		 * 나머지는 D석으로 출력하기 
		 */
		
		System.out.println("** 극장 좌석등급 알림 **");
		System.out.print("귀하의 나이를 입력해주세요 : ");
		
		Scanner sc = new Scanner(System.in);
		int age = sc.nextInt();
		
		if(age < 20) System.out.println("A석 입니다.");
		else if (age < 30) System.out.println("B석 입니다.");
		else if (age < 40) System.out.println("C석 입니다.");
		else System.out.println("D석 입니다.");
	}

}
