package java_0516;

import java.util.Scanner;

public class Input2 {

	public static void main(String[] args) {
		
		// kor, eng 숫자 변수 만들기
		int kor;
		int eng;
		
		// Scanner를 통해 값 입력하기
		Scanner sc = new Scanner(System.in);
		
		System.out.println("첫번째 숫자를 입력하세요.");
		kor = sc.nextInt();
		System.out.println("첫번째 숫자 = " + kor);
		System.out.println("두번째 숫자를 입력하세요.");
		eng = sc.nextInt();
		System.out.println("두번째 숫자 = " + eng);

		// 출력 : kor와 eng 값을 합하여 출력하기
		System.out.println("첫번째 숫자와 두번째 숫자의 합 = " + (kor+eng));

	}

}
