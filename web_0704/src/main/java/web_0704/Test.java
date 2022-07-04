package web_0704;	// default 패키지는 사용불가

import java.util.Random;

public class Test {
	// 메소드 실행 후 값의 전달유무를 항상 체크!!
	
	public int rand_num() {
		// 임의의 숫자를 출력하기 (1~45)
		Random rand = new Random();
		int num = rand.nextInt(45)+1;
		
		System.out.println(num);
		return num;
	}
	
}
