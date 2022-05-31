package abs;

public abstract class Father extends GrandFather {

	/* 
	 * 추상클래스를 상속받은 Father는
	 * 자신도 추상클래스이기 때문에 GrandFather의 추상메소드를 정의하지 않아도 된다.
	 */
	abstract void output();
	
}
