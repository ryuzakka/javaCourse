package java_0524;

public class Const {
	// 생성자 : 클래스와 이름이 동일한 메소드
	// 생성자는 클래스의 객체를 생성할 때 무조건 실행됨
	// 생성자는 실행할 내용이 없다면 생략할 수 있다. => 묵시적 생성자
	// 생략하면 동작 시 비어있는 생성자를 생성 후 동작시킴
	
	// 생성자 정의
	Const() {
		System.out.println("const");
	}
	
	// 메소드는 언제 실행? => 객체 생성 후에 호출에 의해 실행
	public void print() {
		System.out.println("method");
	}
}
