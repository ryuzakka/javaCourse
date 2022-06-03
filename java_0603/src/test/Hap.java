package test;

import java.util.Scanner;

public class Hap {

	/*
		다음의 기능을 가지는 클래스를 설계하여 제출하시오. (Hap.java)
		1. 1부터 100까지의 짝수의 합을 구하는 메소드를 만든다.
		2. a부터 b까지의 합을 구하는 메소드를 만든다.
	 */
	
	public int hap() {	// 1. 1부터 100까지의 짝수의 합을 구하는 메소드

		int hap = 0;
		
		for(int i=1; i<=100; i++) {
			if(i%2 == 0)
				hap += i;
		}
		
		return hap;
	}
	
	public int hapAtoB() {	// 2. a부터 b까지의 합을 구하는 메소드
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		int hap = 0;
		
		if(a > b) {
			int temp;
			temp = a;
			a = b;
			b = temp;
		}
		for(int i=a; i<=b; i++) {
			hap += i;
		}
		
		return hap;
	}
	
}
