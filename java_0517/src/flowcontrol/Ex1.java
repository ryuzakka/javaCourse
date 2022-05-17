package flowcontrol;

import java.util.Scanner;

public class Ex1 {

	public static void main(String[] args) {
		/*
		 * [ 연습문제1 ]
		 * 두 개의 숫자를 입력받기(Scanner)
		 * 산술연산 실행을 위한 값을 입력받기
		 * 	1:+
		 * 	2:-
		 * 	3:*
		 * 	4:/
		 * 입력되는 값에 따라서 하나의 연산만 실행하기
		 */
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("첫번째 숫자를 입력하시오 : ");
		int num1 = sc.nextInt();
		System.out.print("두번째 숫자를 입력하시오 : ");
		int num2 = sc.nextInt();
		System.out.println("두 숫자를 어떻게 연산할까요?");
		System.out.println("1:+,  2:-,  3:*,  4:/");
//		int opNum = sc.nextInt();
//		
//		switch(opNum) {
//			case 1: System.out.println("두 숫자의 합 = " + (num1+num2)); break;
//			case 2: System.out.println("두 숫자의 차 = " + (num1-num2)); break;
//			case 3: System.out.println("두 숫자의 곱 = " + (num1*num2)); break;
//			case 4: System.out.println("두 숫자의 나눗셈 = " + (num1/num2)); break;
//			default: System.out.println("잘못된 연산자를 선택했습니다.");
//		}
		
		char oper = sc.next().charAt(0);
		switch(oper) {
			case '+': System.out.println("두 숫자의 합 = " + (num1+num2)); break;
			case '-': System.out.println("두 숫자의 차 = " + (num1-num2)); break;
			case '*': System.out.println("두 숫자의 곱 = " + (num1*num2)); break;
			case '/': System.out.println("두 숫자의 나눗셈 = " + (num1/num2)); break;
			default: System.out.println("잘못된 연산자를 선택했습니다.");
		}
	}

}
