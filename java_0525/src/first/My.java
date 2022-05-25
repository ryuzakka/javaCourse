package first;

public class My {
	// Father 클래스 기준, 같은 패키지 + 다른 클래스

	public void test() {
		Father father = new Father();
		father.money = 100;
		father.pay = 100;
		father.kor = 90;
//		father.phone = 55;	// private 접근불가
	}
}
