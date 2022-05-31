package inter;

public interface Interface_Start {

	/* 인터페이스에 변수를 선언 */
	// => 무조건 final 속성을 가진다.
	// => static 속성을 가진다.
	// => public만 가능하다.
	public final static int c = 99;	
//	int a;
//	private int b = 100;
	
	
	/* 인터페이스는 추상메소드를 가진다. */ 
	// => default메소드, static메소드가 추가 가능하다.
	// (*jdk 8버전 이전에는 에러남!*)
	default void test() {
		System.out.println("tt");
	}
	static void output() {
		System.out.println("op");
	}
	
	/* 인터페이스는 주로 추상메소드를 가진다. */
	public void print();
	/* 인터페이스의 메소드는 public을 생략해도 된다. */
	void chul();
	
}
