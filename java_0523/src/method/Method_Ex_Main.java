package method;

import java.util.Scanner;

public class Method_Ex_Main {

	public static void main(String[] args) {
		/*
		 * 국, 영, 수 성적을 입력하여 총점과 평균을 구해주는 프로그램 작성하기
		 * (메소드 이름은 자유)
		 * 4개의 클래스를 만들어서 작업
			1. 매개변수 X, 리턴값 X
			2. 매개변수 O, 리턴값 X 
			3. 매개변수 X, 리턴값 O
			4. 매개변수 O, 리턴값 O
		 */
		
		Scanner sc = new Scanner(System.in);		
		Method_Ex1 mex1 = new Method_Ex1();
		Method_Ex2 mex2 = new Method_Ex2();
		Method_Ex3 mex3 = new Method_Ex3();
		Method_Ex4 mex4 = new Method_Ex4();
		int kor, eng, mat;
		int sum, avg;
		
		while(true) {
			System.out.println();
			System.out.println("** 메소드 처리 방식을 선택하시오. **");
			System.out.println("1. 매개변수 X, 리턴값 X");
			System.out.println("2. 매개변수 O, 리턴값 X");
			System.out.println("3. 매개변수 X, 리턴값 O");
			System.out.println("4. 매개변수 O, 리턴값 O");
			System.out.println("0. 프로그램 종료");
			int type = sc.nextInt();
			
			if (type == 0) {
				System.out.println("프로그램을 종료합니다.");
				break;
			}
			else if (type == 1) {
				System.out.println("1. 매개변수 X, 리턴값 X");
				mex1.input();
				mex1.output();
			}
			else if (type == 2) {
				System.out.println("2. 매개변수 O, 리턴값 X");
				System.out.print("국어점수: ");
				kor = sc.nextInt();
				System.out.print("영어점수: ");
				eng = sc.nextInt();
				System.out.print("수학점수: ");
				mat = sc.nextInt();
				mex2.output(kor, eng, mat);
			}
			else if (type == 3) {
				System.out.println("3. 매개변수 X, 리턴값 O");
				mex3.input();
				sum = mex3.sum();
				avg = mex3.avg();
				System.out.println("세과목 총점: " + sum);
				System.out.println("세과목 평균: " + avg);
			}
			else if (type == 4) {
				System.out.println("4. 매개변수 O, 리턴값 O");
				System.out.print("국어점수: ");
				kor = sc.nextInt();
				System.out.print("영어점수: ");
				eng = sc.nextInt();
				System.out.print("수학점수: ");
				mat = sc.nextInt();
				sum = mex4.sum(kor, eng, mat);
				avg = mex4.avg(kor, eng, mat);
				System.out.println("세과목 총점: " + sum);
				System.out.println("세과목 평균: " + avg);
			}
			else
				System.out.println("잘못된 숫자를 입력하셨습니다.");
		}
		
	}

}
