package java_0524;

public class ConstEx1 {
	
	// a부터 b까지의 합을 구해서 출력하는 클래스
	// a, b 값을 생성자를 통해 초기화
	// 합을 구하는 메소드, 출력하는 메소드 2개를 생성
	
	int a, b;
	int sum;
	
	ConstEx1(int a, int b) {
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
