package java_0520;

import java.util.Scanner;

public class Grade01 {

	public static void main(String[] args) {
		// 국, 영, 수 과목을 입력받고 총점과 평균을 구하라.
		
		Scanner sc = new Scanner(System.in);
		
		int kor, eng, mat;
		kor = sc.nextInt();
		eng = sc.nextInt();
		mat = sc.nextInt();
		
		int sum, avg;
		sum = kor + eng + mat;
		avg = sum/3;
		
		System.out.println(sum + " " + avg);

	}

}
