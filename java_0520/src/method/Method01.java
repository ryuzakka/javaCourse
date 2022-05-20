package method;

import java.util.Scanner;

public class Method01 {
	/*
	 * 메소드 : 동작할 내용을 모아놓은 영역 => 연관있는 동작들을 모아둠
	 * 메소드 실행방법 : 메소드의 이름을 불러주면 됨
	 * 메소드 호출 가능영역 => 모든 메소드에서는 가능 (but 메인메소드를 호출할 수 없음)
	 * 
	 * 메소드 선언 방법
	 	접근제한자 리턴값 메소드명(매개변수) {
	 		메소드의 내용
	 	}
	 * 접근제한자 : public, protected, default, private
	 * 리턴값 : 메소드를 실행한 후에 발생된 값을 돌려주는 것
	 * 매개변수 : 메소드를 실행하기 위해 필요한 값을 메소드에 전달
	 * 
	 * 명명규칙 : 변수, 클래스, 메소드 이름을 만들 때의 규칙
	 */
	
	/*
	 * 메소드의 형태
	 * 1. 리턴값X  매개변수X
	 * 2. 리턴값O  매개변수X
	 * 3. 리턴값X  매개변수O
	 * 4. 리턴값O  매개변수O
	 */
	
	// a에서 b까지의 합을 구해서 출력 => 무조건 a가 작은걸로
	// 1. 리턴값X  매개변수X
	public void first() {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		int sum = 0;
		int temp;
		if(a > b) {
			temp = a;
			a = b;
			b = temp;
		}
		for(int i=a; i<=b; i++) {
			sum += i;
		}
		System.out.println("합 = " + sum);
	}
	
	// 2. 리턴값O  매개변수X
	public int second() {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		int sum = 0;
		int temp;
		
		if(a > b) {
			temp = a;
			a = b;
			b = temp;
		}
		for(int i=a; i<=b; i++) {
			sum += i;
		}
		return sum;
	}
	
	// 3. 리턴값X  매개변수O
	public void third(int a, int b) {
		int sum = 0;
		int temp;
		if(a > b) {
			temp = a;
			a = b;
			b = temp;
		}
		for(int i=a; i<=b; i++) {
			sum += i;
		}
		System.out.println("합 = " + sum);
	}
	
	// 4. 리턴값O  매개변수O
	public int fourth(int a, int b) {
		int sum=0;
		int temp;
		if(a > b) {
			temp = a;
			a = b;
			b = temp;
		}
		for(int i=a; i<=b; i++) {
			sum += i;
		}
		return sum;
	}
	
}
