package java_baepo;

public class MyJob {
	// 자바 라이브러리 배포
	
	private int kor, eng, mat;
	private int tot, avg;
	
	public void input(int kor, int eng, int mat) {	// 국,영,수 점수 입력
		this.kor = kor;
		this.eng = eng;
		this.mat = mat;
	}
	public void cal() {		// 총점과 평균을 계산
		tot = kor + eng + mat;
		avg = tot / 3;
	}
	public int getTot() {	// 총점 반환
		return tot;
	}
	public int getAvg() {	// 평균 반환
		return avg;
	}
	
}
