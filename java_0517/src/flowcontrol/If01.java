package flowcontrol;

public class If01 {

	public static void main(String[] args) {
		/*
		if 조건문 : 조건에 따라 실행되는 문장이 다른 경우
	    형식)	if(조건)	{ 문장A; }
			else	{ 문장B; }
		*/
		
		// 실행할 문장이 2개이지만 조건에 따라 둘 중에 하나만 실행
		// 국어점수가 입력되었을때 다음과 같이 문장을 실행한다. (합격기준 60점 이상)
		
		int kor;
		
		kor = 70;
		
		if(kor >= 60) {
			System.out.println("합격입니다.");			
		} else {
			System.out.println("불합격입니다.");			
		}
		
	}

}
