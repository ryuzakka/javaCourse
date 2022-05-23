package method;

import java.util.Scanner;

public class Method_Ex3 {
	// 3. 매개변수 X, 리턴값 O
	int kor, eng, mat;
	int sum, avg;
	
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
	
	public int sum() {
		sum = kor + eng + mat;
		return sum;
	}
	
	public int avg() {
		avg = sum / 3;
		return avg;
	}
	
	
	// 강의내용
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
