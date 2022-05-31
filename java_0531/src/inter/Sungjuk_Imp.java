package inter;

public class Sungjuk_Imp implements Sungjuk {
	/* 관례적으로 인터페이스를 구현한 클래스는 클래스명에 Imp를 넣는다. */
	
	/* 인터페이스는 객체를 생성할 수 없기 때문에 클래스를 통해 구현한다. */
	// Sungjuk_Imp를 '구현클래스' 라 한다.
	// 구현클래스는 인터페이스의 추상메소드를 재정의 해야한다.
	@Override
	public void average() {
		System.out.println("평균");
	}
	@Override
	public void total() {
		System.out.println("합계");
	}
	
	/* 클래스이기 때문에 자신의 변수와 메소드를 선언하여 사용가능 */
	int num = 100;
	public void output() {
		System.out.println(num);
	}
	
	
}
