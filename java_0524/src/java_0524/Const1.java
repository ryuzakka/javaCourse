package java_0524;

public class Const1 {
	// n부터 100까지의 합을 구하기
	
	int n;
	int sum = 0;
	
	// 프로그램 실행시 꼭 필요한 값, 동작이 필요한 경우
	Const1(int n) {
		this.n = n;
	}
	
	public void cal() {
		for(int i=n; i<=100; i++) {
			sum += i;
		}
	}
	
	public void output() {
		System.out.println("합 : " + sum);
	}
}
