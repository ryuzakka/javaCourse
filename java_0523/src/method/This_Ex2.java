package method;

public class This_Ex2 {
	// this 속성과 메소드를 다 부를 수 있다.
	
	int kor = 100;
	
	public void test() {
		int kor = 99;
		System.out.println(kor);
		System.out.println(this.kor);
		output();
	}
	
	public void output() {
		System.out.println("output");
		this.check();
	}
	
	public void check() {
		System.out.println("checked");
	}
	
}
