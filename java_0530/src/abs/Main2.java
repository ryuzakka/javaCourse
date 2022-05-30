package abs;

public class Main2 {

	public static void main(String[] args) {
		// Team클래스의 객체를 생성하면
		// Team클래스가 상속받는 Abstract2의 생성자가 먼저 실행된다.
		Team t = new Team("홍길동");
		t.test();
	}

}
