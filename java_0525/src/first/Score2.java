package first;

public class Score2 {
	// 국, 영, 수 점수를 입력받아서 총점과 평균을 구하고 출력하기
	private int kor, eng, mat, sum, avg;
	
	// 값 입력과 출력은 변수에 직접
	public void input() {
		
	}
	
	// 계산
	public void cal() {
		sum = kor + eng + mat;
		avg = sum / 3;
	}
	
}
