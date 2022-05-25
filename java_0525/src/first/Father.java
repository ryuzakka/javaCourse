package first;

public class Father {
	
	// public : 서로 다른 패키지나 다른 클래스에서도 접근이 가능
	public int money;

	// protected : 같은 패키지 내에서만 접근이 가능
	// 단, 상속을 하는 클래스는 사용이 가능
	protected int pay;
	
	// default : 같은 패키지 내에서만 접근이 가능
	int kor;
	
	// private : 같은 클래스(자신 클래스)에서만 접근이 가능
	private int phone;
	
	
	public void test() {
		money = 90;
		pay = 99;
		kor = 100;
		phone = 77;
	}
	
}
