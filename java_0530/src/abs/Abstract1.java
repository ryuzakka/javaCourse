package abs;

// abstract 클래스는 기본적으로 추상메소드를 하나 이상 가진다.
// 추상클래스는 기능이 구현된 메소드랑 구현되지 않은 메소드 둘다
public abstract class Abstract1 {
	int kor = 89;
	public void output() {
		System.out.println(kor);
	}
	public void setKor(int k) {
		this.kor = k;
	}
	
	// 추상메소드 : 기능이 구현되지 않은 메소드. {}가 없음
	abstract void check();
	// 추상메소드는 왜 만들었을까?
	// 기능의 구현을 사용하는 곳에서 적절하게 정의해서 사용할 수 있다.
}
