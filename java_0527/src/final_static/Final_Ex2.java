package final_static;

public class Final_Ex2 {
	// final을 변수에 사용하면, 더 이상 변수의 값을 변경시키지 못한다.
	// 하지만, 초기에 값을 주지 못할 경우도 있다.
	
	/* 
	 * final 변수에 값을 전달하는 방법
	 * 1. 선언과 동시에 전달
	 * 2. 생성자의 매개변수를 통해 전달
	 */
	
	final int kor = 70; // 초기값 필수
	final int eng;
	
	Final_Ex2(int n) {
		this.eng = n;
	}
	
}
