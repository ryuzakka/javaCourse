package flowcontrol;

import java.util.Scanner;

public class Ex3 {

	public static void main(String[] args) {
		/*
		 * [ 연습문제 3]
		 * 두 개의 숫자를 입력받기
		 * 큰 수에서 작은 수를 뺀 값을 출력
		 */
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("두 개의 숫자를 입력해주세요.");
		
		System.out.print("첫번째 숫자 : ");
		int num1 = sc.nextInt();
		System.out.print("두번째 숫자 : ");
		int num2 = sc.nextInt();
		
		if (num1 > num2)
			System.out.println("두 숫자는 " + (num1-num2) + "만큼 차이가 납니다.");
		else
			System.out.println("두 숫자는 " + (num2-num1) + "만큼 차이가 납니다.");			
		
//		int chk = num1/num2;
//		switch(chk) {
//			case 0: System.out.println(num2-num1); break;
//			default: System.out.println(num1-num2);
//		}
	}

}
