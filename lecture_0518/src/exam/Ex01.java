package exam;

import java.util.Scanner;

public class Ex01 {

	public static void main(String[] args) {
		// 두개의 숫자를 입력받기(Scanner)
		// 산술연산 실행을 위한 값을 입력받기 (1:+, 2:-, 3:*, 4:/)
        // 입력되는 값에따라서 하나의 연산만 실행하기
		
		Scanner sc = new Scanner(System.in);
		
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		int opNum = sc.nextInt();
		
		if (opNum == 1)
			System.out.println(num1 + num2);
		else if (opNum == 2)
			System.out.println(num1 - num2);
		else if (opNum == 3)
			System.out.println(num1 * num2);
		else if (opNum == 4)
			System.out.println(num1 / num2);
		else
			System.out.println("잘못된 연산 번호 입니다.");

	}

}
