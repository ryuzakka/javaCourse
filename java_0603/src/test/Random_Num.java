package test;

import java.util.Random;
import java.util.Scanner;

public class Random_Num {

	/*
		다음의 기능을 가지는 클래스를 설계하여 제출하시오. (Random_Num.java)
		1. 1~45까지의 임의의 값을 하나 출력하는 메소드
		2. a~b의 값을 입력받고 a~b까지의 임의의 값을 출력하는 메소드
	 */
	
	public void random() {	// 1. 1~45까지의 임의의 값을 하나 출력하는 메소드
		Random rand = new Random();
		int result = rand.nextInt(45);
		
		System.out.println(result+1);
	}
	
	public void randomAtoB() {	// 2. a~b의 값을 입력받고 a~b까지의 임의의 값을 출력하는 메소드
		Scanner sc = new Scanner(System.in);
		Random rand = new Random();
		
		int a = sc.nextInt();
		int b = sc.nextInt();
		
		if(a > b) {
			int temp;
			temp = a;
			a = b;
			b = temp;
		}
		
		int result = rand.nextInt(a, b+1);
		
		System.out.println(result);
		
	}
	
}
