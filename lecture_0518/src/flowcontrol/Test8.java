package flowcontrol;

import java.util.Scanner;

public class Test8 {

	public static void main(String[] args) {
		// 5명의 국어 성적을 입력받아서 총점과 평균 출력하기
		
		Scanner sc = new Scanner(System.in);
		
		int sum = 0;
		
		System.out.println("5명의 국어 성적을 입력하시면 됩니다.");
		for(int i=1; i<=5; i++) {
			System.out.print(i + "번째 국어 성적 : ");
			sum += sc.nextInt();
		}
		System.out.println();
		System.out.println("5명의 국어성적 총점 : " + sum);
		System.out.println("5명의 국어성적 평균 : " + (sum/5));
		
	}

}
