package second;

import first.Father;

public class Honey {
	// Father 클래스 기준, 다른 패키지 + 다른 클래스

	public void test() {
		Father father = new Father();
		father.money = 200;
//		father.pay = 150;	// protected 접근불가
//		father.kor = 95;	// default 접근불가
//		father.phone = 75;	// private 접근불가
	}
}
