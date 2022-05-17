package flowcontrol;

import java.util.Scanner;

public class If_Ex3 {

	public static void main(String[] args) {
		/*
		 * 원하는 메뉴의 값을 숫자로 입력받는다.
		 * 1. 짜장면
		 * 2. 우동
		 * 3. 짬뽕
		 * 4. 탕수육
		 */
		
		System.out.println("** 중국음식 키오스크 **");
		System.out.println("1.짜장면  2.우동  3.짬뽕  4.탕수육");
		System.out.print("주문하실 메뉴를 선택해주세요 : ");
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		
		if ( num == 1 )	System.out.println("짜장면을 선택하셨습니다.");
		else if ( num == 2 ) System.out.println("우동을 선택하셨습니다.");			
		else if ( num == 3 ) System.out.println("짬뽕을 선택하셨습니다.");
		else if ( num == 4 ) System.out.println("탕수육을 선택하셨습니다.");
		else System.out.println("잘못 선택하셨습니다.");
		
	}

}
