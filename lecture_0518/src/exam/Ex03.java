package exam;

import java.util.Scanner;

public class Ex03 {

	public static void main(String[] args) {
		// 두개의 숫자를 입력받기
		// 큰수에서 작은수를 뺀 값을 출력하기
		
		Scanner sc = new Scanner(System.in);
		
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		
		if (num1 > num2)
			System.out.println(num1 - num2);
		else
			System.out.println(num2 - num1);
	}

}
