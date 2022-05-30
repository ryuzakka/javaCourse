package abs;

public class Main {

	public static void main(String[] args) {
		// 추상클래스는 객체 생성을 하지 못한다.
		// Why? 기능이 정의되지 않은 메소드가 존재하기 때문에
		// So, 추상클래스는 상속을 통해서 오버라이딩해서 사용해야한다.
//		Abstract1 a1 = new Abstract1();
		Ateam ateam = new Ateam();
		ateam.setKor(61);
		ateam.check();
		ateam.setKor(59);
		ateam.check();
		
		Bteam bteam = new Bteam();
		bteam.setKor(91);
		bteam.check();
		bteam.setKor(81);
		bteam.check();
		bteam.setKor(71);
		bteam.check();
		bteam.setKor(61);
		bteam.check();
	}

}
