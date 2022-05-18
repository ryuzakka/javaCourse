package flowcontrol;

import java.util.Scanner;

public class While01 {

	public static void main(String[] args) {
		// 반복문 : while
		/*
		 * 	while(조건식)
		 * 	{
		 * 		반복되는 문장;
		 * 	}
		 */
		Scanner sc = new Scanner(System.in);
		
//		int i = sc.nextInt();
//		while(i != 0) {
//			i = sc.nextInt();
//			System.out.println("안녕하세요.");
//		}
		
		while(sc.nextInt() != 0) {
			System.out.println("안녕하세요.");
		}
		System.out.println("종료됐습니다.");
		
	}

}
