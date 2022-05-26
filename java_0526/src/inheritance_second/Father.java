package inheritance_second;

public class Father {
	// 국어, 영어의 합계를 구해주는 클래스
	
	int kor, eng;
	int sum;
	
	public void input(int kor, int eng) {
		this.kor = kor;
		this.eng = eng;
	}
	
	public void cal() {
		sum = kor + eng;
	}
	
	public void output() {
		System.out.println("합:" + sum);
	}
}
