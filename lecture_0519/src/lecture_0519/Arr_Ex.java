package lecture_0519;

import java.util.Scanner;

public class Arr_Ex {

	public static void main(String[] args) {
		// 10명의 국어점수를 콘솔로 입력받기
		Scanner sc = new Scanner(System.in);
		int[] arr = new int[10];
		
		for(int i=0; i<arr.length; i++) {
			arr[i] = sc.nextInt();
		}
		
		// 10명의 국어점수를 출력하기
		for(int i=0; i<arr.length; i++) {
			System.out.println(arr[i]);
		}
		
		// 보너스 문제 : 10명의 총점과 평균 구하기
		int sum = 0;
		for(int i=0; i<arr.length; i++) {
			sum += arr[i];
		}
		System.out.println("10명의 총점 : " + sum);
		System.out.println("10명의 평균 : " + (sum/arr.length));

	}

}
