package flowcontrol;

import java.util.Scanner;

public class If_Ex2 {

	public static void main(String[] args) {
		// 나이를 입력 받아서 20살 이상이면 "어서오세요"를 출력. 20살 미만이면 "다음에 오세요"를 출력.
		
		
		// 나이를 입력 받을 준비하기
		Scanner sc = new Scanner(System.in);
		int age;
		// 나이 물어보기 
		System.out.println("*** 주의 ***");
		System.out.print("나이를 입력하시오 : ");
		// 나이 입력받기		
		age = sc.nextInt();
		
		// 20살을 기준으로 조건문을 사용
		if (age < 20) {
			System.out.println("미성년자는 이용하실 수 없습니다.");
		} else {
			System.out.println("어서오세요.");
		}
	}

}
