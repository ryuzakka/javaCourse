package inheritance_second;

public class My extends Father {
	// 2과목이 들어오면 국어, 영어의 합계 출력 => 상속으로 해결
	// 3과목이 들어오면 국어, 영어, 수학의 합계 출력
	
	int mat;
	
	public void input2(int kor, int eng, int mat) {
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
	}
	
	public void cal2() {
		sum = kor + eng + mat;
	}
	
	public int returnsum() {
		return sum;
	}
	
}
