package java_0516;

import java.util.Scanner;

public class Input {

	public static void main(String[] args) {
		// 콘솔창 출력
		System.out.println("출력");
		
		// 콘솔창 입력
		Scanner sc = new Scanner(System.in);
		
		// 콘솔창에서 숫자를 입력
		int num = sc.nextInt();
		System.out.println(num);
		
		// 콘솔창에서 문자를 입력
		String txt = sc.next();
		System.out.println(txt);

	}

}
