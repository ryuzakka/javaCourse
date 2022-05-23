package method;

import java.util.Scanner;

public class Hap_Main {

	public static void main(String[] args) {
		// a부터 b까지의 합을 구하기
		// 매개변수 X  리턴값 X
		// 매개변수 O  리턴값 X
		// 매개변수 X  리턴값 O
		// 매개변수 O  리턴값 O

		Scanner sc = new Scanner(System.in);
		Hap1 h1 = new Hap1();
		Hap2 h2 = new Hap2();
		Hap3 h3 = new Hap3();
		Hap4 h4 = new Hap4();
		int startNum, endNum, sum;
		
		while(true) {
			System.out.println("");
			System.out.println("** a부터 b까지의 합을 구하는 프로그램 **");
			System.out.println("< 프로그램 구동방식 선택하기 >");
			System.out.println("1. 매개변수 X, 리턴값 X");
			System.out.println("2. 매개변수 O, 리턴값 X");
			System.out.println("3. 매개변수 X, 리턴값 O");
			System.out.println("4. 매개변수 O, 리턴값 O");
			System.out.println("0. 프로그램 종료");
			
			int type = sc.nextInt();
			
			if(type == 0) {
				System.out.println("프로그램 종료");
				break;
			} 
			else if(type == 1) {
				h1.input();
				h1.cal();
				h1.print();
			}
			else if(type == 2) {
				System.out.print("첫번째 숫자를 입력하시오 :");
				startNum = sc.nextInt();
				System.out.print("두번째 숫자를 입력하시오 :");
				endNum = sc.nextInt();
				h2.input(startNum, endNum);
				h2.cal();
				h2.print();
			}
			else if(type == 3) {
				h3.input();
				h3.cal();
				sum = h3.output();
				System.out.println("합 : " + sum);
			}
			else if(type == 4) {
				System.out.print("첫번째 숫자를 입력하시오 :");
				startNum = sc.nextInt();
				System.out.print("두번째 숫자를 입력하시오 :");
				endNum = sc.nextInt();
				h4.input(startNum, endNum);
				h4.cal();
				sum = h4.output();
				System.out.println("합 : " + sum);
			}
			else {
				System.out.println("잘못된 숫자를 입력했습니다.");
			}
		}

	}

}
