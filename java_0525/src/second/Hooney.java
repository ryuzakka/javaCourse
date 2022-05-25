package second;

import first.Father;

public class Hooney extends Father{
	// Father 클래스 기준, 다른 패키지 + 다른 클래스
	
	public void test() {
		money = 70;
		pay = 40;	// 상속을 받으면 protected 접근 가능
//		kor = 79;	// 접근불가
//		phone = 12;	// 접근불가
	}
}
