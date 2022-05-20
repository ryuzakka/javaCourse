package java_0520;

import java.util.Scanner;

public class Sung {
	/* jar파일로 배포를 테스트(Export 테스트)하기 위한 파일 */
	// 속성
	Scanner sc = new Scanner(System.in);
	int kor, eng, mat;
	int sum, avg;
	
	// 메소드
	public void input() {	// 1. 점수 입력
		kor = sc.nextInt();
		eng = sc.nextInt();
		mat = sc.nextInt();
	}
	public void cal() {		// 2. 계산
		sum = kor + eng + mat;
		avg = sum/3;
		
	}
	public void output() {	// 3. 출력
		System.out.println(sum + " " + avg);
	}

}
