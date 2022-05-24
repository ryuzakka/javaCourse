package java_0524;

public class ConstEx2 {
	// 1~100 까지의 합
	// 1~b 까지의 합
	// a~b 까지의 합
	// 위의 동작을 하는 클래스를 만들고자 한다.
	// 단, 값의 초기화는 생성자를 통해서 한다.
	
	int a, b;
	int sum;
	
	/*
	 * 오버로딩 / 생성자 오버로딩
	 * 메소드의 이름이 동일하더라도 매개변수가 다르면 사용 가능. 
	 */
	ConstEx2() {
		a = 1;
		b = 100;
	}
	
	ConstEx2(int b) {
		a = 1;
		this.b = b;
	}
	
	ConstEx2(int a, int b) {
		this.a = a;
		this.b = b;
	}
	
	public void cal() {
		for(int i=a; i<=b; i++) {
			sum += i;
		}
	}
	
	public void print() {
		System.out.println("합:" + sum);
	}
}
