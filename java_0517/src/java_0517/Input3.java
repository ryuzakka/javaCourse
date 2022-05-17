package java_0517;

import java.util.Scanner;

public class Input3 {

	public static void main(String[] args) {
				
		// 숫자(정수) 2개를 입력하기
		int x;
		int y;
		
		Scanner sc = new Scanner(System.in);
		x = sc.nextInt();
		System.out.println(x + " 을 입력하셨습니다.");
		y = sc.nextInt();
		System.out.println(y + " 을 입력하셨습니다.");
		
		// 숫자 2개를 더하여 출력하기
		System.out.println("입력한 두 숫자의 합은 " + (x+y) + " 입니다.");
		
	}

}
