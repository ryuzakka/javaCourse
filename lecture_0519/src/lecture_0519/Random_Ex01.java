package lecture_0519;

import java.util.Random;

public class Random_Ex01 {

	public static void main(String[] args) {
		// 랜덤(무작위) 숫자 
		
		Math.random();	// 0 ~ 1 사이의 임의의 실수를 발생
		System.out.println(Math.random());
		
		// 정수를 만든 후 나머지 연산을 활용
		double num = Math.random()*1000;
		int num2 = (int)num;
		num2 = num2 % 45; // 0 ~ 44 발생
		num2 = num2 + 1;  // 1 ~ 45 발생
		System.out.println(num2);
		
		// 값을 곱해서 처리
		double rnum = Math.random() * 45;	// 0~45사이의 실수 저장
		int rnum2 = (int)rnum;	// 소수점 버리기 => 0~44 사이의 정수
		rnum2++;	// 1~45 사이의 정수
		System.out.println(rnum2);
		
		// Random클래스를 이용하기
		Random rand = new Random();
		rand.nextInt();	// 임의의 정수
		System.out.println(rand.nextInt(45));	// 0~44 사이의 정수
		System.out.println(rand.nextInt(45)+1);	// 1~45 사이의 정수
		int mynum = rand.nextInt(45)+1;
		System.out.println(mynum);
	}

}
