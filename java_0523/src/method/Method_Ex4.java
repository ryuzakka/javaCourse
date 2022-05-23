package method;

public class Method_Ex4 {
	// 4. 매개변수 O, 리턴값 O
	
	public int sum(int kor, int eng, int mat) {
		return kor+eng+mat;
	}
	
	public int avg(int kor, int eng, int mat) {
		return (kor+eng+mat)/3;
	}
	
	
	// 강의내용
	int kor, eng, mat, sum, avg;
	public void input(int k, int e, int m) {
		kor = k;
		eng = e;
		mat = m;
	}
	public void cal() {
		sum = kor + eng + mat;
		avg = sum / 3;
	}
	public int sumreturn() {
		return sum;
	}
	public int avgreturn() {
		return avg;
	}
}
