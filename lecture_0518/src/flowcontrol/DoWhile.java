package flowcontrol;

import java.util.Scanner;

public class DoWhile {

	public static void main(String[] args) {
		// 반복문 : do~while
		/*
		 	do
		  	{
		  		반복문장
		 	} while(조건식);
		 */
		Scanner sc = new Scanner(System.in);
		
		do {
			System.out.println("안녕하세요");
		} while(sc.nextInt() != 0);
		
		System.out.println("종료");
	}

}
