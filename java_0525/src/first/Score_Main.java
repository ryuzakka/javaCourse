package first;

public class Score_Main {

	public static void main(String[] args) {
		// private인 변수에 값을 주기 위해서
		// public인 메소드를 이용한다.
		Score score = new Score();
		Score2 score2 = new Score2();
		
		/* private 변수에 직접 접근 불가 */
//		score2.kor = 99;
//		score2.eng = 88;
//		score2.mat = 77;
		score2.cal();
//		System.out.println("합:"+score2.sum);
//		System.out.println("평균:"+score2.avg);
		
		/* private 변수 값 변경(입력)하기 */
		score.input(99, 88, 77);
		score.cal();
		System.out.println("합:"+score.sumreturn());
		System.out.println("평균:"+score.avgreturn());
		
	}

}
