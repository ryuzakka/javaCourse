package method;

public class This_Ex1 {
	// 매개변수로 필요한 값을 가져올 때
	// this : 현재 클래스의 별칭
	int kor, eng, mat;
	
	public void input(int kor, int eng, int mat) {
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
	}
	
	public void output() {
		System.out.println(kor+eng+mat);
	}
}
