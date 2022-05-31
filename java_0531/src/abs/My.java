package abs;

public class My extends Father {
	
	/*
	 * 추상클래스를 멀티 상속할 경우
	 * 모든 추상메소드를 재정의 해야 한다.
	 */
	
	@Override
	public void output() {
		System.out.println("Father output method");
	}
	
	@Override
	public void print() {
		System.out.println("GrandFather print method");
	}

}
