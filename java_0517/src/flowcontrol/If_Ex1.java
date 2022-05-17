package flowcontrol;

import java.util.Scanner;

public class If_Ex1 {

	public static void main(String[] args) {
		// 영어 점수를 콘솔창에서 입력받고 60점 이상이면 합격, 미만이면 불합격 출력하기
		
		int englishScore;
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("영어 점수를 입력하시요 : ");
		englishScore = sc.nextInt();
		
		if(englishScore < 60) {
			System.out.println("불합격이네요.");
		} else {
			System.out.println("합격입니다.");
		}

	}

}
