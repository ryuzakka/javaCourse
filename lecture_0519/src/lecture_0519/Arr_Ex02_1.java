package lecture_0519;

import java.util.Scanner;

public class Arr_Ex02_1 {

	public static void main(String[] args) {
		// 1학년의 교과점수를 입력할 때 배열을 사용할 경우
		// 1반:4명, 2반:5명, 3반:2명, 4반:8명
		
		Scanner sc = new Scanner(System.in);
		
		int totalClass, maxStudent;
		int classNum, studentNum;
		
		System.out.print("1학년의 총 학급수를 입력: ");
		totalClass = sc.nextInt();
		System.out.print("학생 수가 가장 많은 학급의 학생수 입력: ");
		maxStudent = sc.nextInt();
		int[][] score = new int[totalClass][maxStudent];
		
		for(int j=0; j<totalClass; j++) {
			System.out.print("반 번호를 입력: ");
			classNum = sc.nextInt();
			System.out.print(classNum+"반의 학생 수를 입력: ");
			studentNum = sc.nextInt();
			
			System.out.println("1학년 "+classNum+"반의 학생 수는 총 "+studentNum+"명 입니다.");
			
			for(int i=0; i<studentNum; i++) {
				System.out.println(classNum+"반 "+(i+1)+"번 학생의 국어점수: ");
				score[classNum-1][i] = sc.nextInt();
			}
			System.out.println("입력이 완료됐습니다.");
			int sum = 0;
			for(int i=0; i<studentNum; i++) {
				System.out.println((i+1)+"번 학생의 점수 = "+score[classNum-1][i]);
				sum += score[classNum-1][i];
			}
			System.out.println("1학년 "+classNum+"반의 국어점수 총점="+sum+" 평균="+(sum/studentNum));
			System.out.println("------");
			
		}
	}

}
