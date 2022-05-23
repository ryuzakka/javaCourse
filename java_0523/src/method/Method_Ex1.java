package method;

import java.util.Scanner;

public class Method_Ex1 {
	// 1. 매개변수 X, 리턴값 X
	int kor, eng, mat, sum, avg;
	
	public void input() {
		Scanner sc = new Scanner(System.in);
		System.out.println("** 점수를 입력하시오. **");
		System.out.print("국어점수: ");
		kor = sc.nextInt();
		System.out.print("영어점수: ");
		eng = sc.nextInt();
		System.out.print("수학점수: ");
		mat = sc.nextInt();
	}
	
	public void output() {
		sum = kor + eng + mat;
		avg = sum/3;
		System.out.println("세과목 총점: " + sum);
		System.out.println("세과목 평균: " + avg);
	}
	
	
	// 강의내용
	public void set() {
		Scanner sc = new Scanner(System.in);
		System.out.println("** 점수를 입력하시오. **");
		System.out.print("국어점수: ");
		kor = sc.nextInt();
		System.out.print("영어점수: ");
		eng = sc.nextInt();
		System.out.print("수학점수: ");
		mat = sc.nextInt();
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
