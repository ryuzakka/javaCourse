package method;

public class Method_Ex2 {
	// 2. 매개변수 O, 리턴값 X 
	public void output(int kor, int eng, int mat) {
		int sum = kor + eng + mat;
		int avg = sum/3;
		
		System.out.println("세과목 총점: " + sum);
		System.out.println("세과목 평균: " + avg);
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
	public void print() {
		System.out.println("총점: " + sum);
		System.out.println("평균: " + avg);
	}
}
