package inheritance_second;

public class My2 extends Father {
	// 3과목의 합계를 구해주는 클래스
	int mat;
	
	public void input(int kor, int eng, int mat) {
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
	}
	// Override : 부모클래스의 상속받은 메소드를 재정의 한 것
	@Override	// Annotaion : 안내와 같은 것
	public void cal() {
		sum = kor + eng + mat;
	}
	public void father_cal() {
		super.cal();
	}
	
}
