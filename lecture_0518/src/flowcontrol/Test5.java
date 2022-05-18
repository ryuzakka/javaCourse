package flowcontrol;

import java.util.Scanner;

public class Test5 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		// 1부터 x까지의 합 구하기 (x는 Scanner로 입력받기)
		int sum = 0;
		int x = sc.nextInt();
		for(int i=1; i<=x; i++) {
			sum += i;
		}
		System.out.println("1부터 " + x + "까지의 합: " + sum);

		// a부터 b까지의 합 구하기
		// a가 b보다 크다면 값을 교환 후 실행하기
		sum = 0;
		int a = sc.nextInt();
		int b = sc.nextInt();
		int temp;
		if(a > b) {
			temp = a;
			a = b;
			b = temp;
		}
		for(int i=a; i<=b; i++) {
			sum += i;
		}
		System.out.println(a + "부터 " + b + "까지의 합: " + sum);

	}

}
