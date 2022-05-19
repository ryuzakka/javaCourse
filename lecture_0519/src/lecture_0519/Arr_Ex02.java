package lecture_0519;

import java.util.Scanner;

public class Arr_Ex02 {

	public static void main(String[] args) {
		// 1학년의 교과점수를 입력할 때 배열을 사용할 경우
		// 1반:4명, 2반:5명, 3반:2명, 4반:8명

		// 반별 국어점수를 입력받는다
		Scanner sc = new Scanner(System.in);
		
		/* 1반 */
		System.out.println("** 1반 **");
		// 1반 인원수 입력하기
		System.out.print("1반 학생 수를 입력하시오: ");
		int[] class01Kor = new int[sc.nextInt()];
		// 1반 국어점수 입력하기
		for(int i=0; i<class01Kor.length; i++) {
			class01Kor[i] = sc.nextInt();
			System.out.println("1반 " + i + "번째 국어점수 = " + class01Kor[i]);
		}
		
		/* 2반 */
		System.out.println("** 2반 **");
		// 2반 인원수 입력하기
		System.out.print("2반 학생 수를 입력하시오: ");
		int[] class02Kor = new int[sc.nextInt()];
		// 2반 국어점수 입력하기
		for(int i=0; i<class02Kor.length; i++) {
			class02Kor[i] = sc.nextInt();
			System.out.println("2반 " + i + "번째 국어점수 = " + class02Kor[i]);
		}
		
		/* 3반 */
		/* 4반 */

	}

}
