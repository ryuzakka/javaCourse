package method;

import java.util.Scanner;

public class Method_Ex_Main {

	public static void main(String[] args) {
		// 국어, 영어 점수를 입력받아서 평균을 구하여 출력하기
		// 메소드 4가지 형태 모두 만들기
		Scanner sc = new Scanner(System.in);
		Method_Ex mex = new Method_Ex();
		int avg;
		
		mex.score1();
		
		mex.score2(sc.nextInt(), sc.nextInt());
		
		avg = mex.score3(); 
		System.out.println("매개변수X, 리턴O : 평균 = " + avg);
		
		avg = mex.score4(sc.nextInt(), sc.nextInt());
		System.out.println("매개변수O, 리턴O : 평균 = " + avg);
	}

}
