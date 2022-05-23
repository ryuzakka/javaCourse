package method;

import java.util.Scanner;

public class Hap1 {
	// 매개변수 X  리턴값 X
	Scanner sc = new Scanner(System.in);
	int startNum, endNum, sum;
	
	public void input() {
		System.out.print("첫번째 숫자를 입력하시오 :");
		startNum = sc.nextInt();
		System.out.print("두번째 숫자를 입력하시오 :");
		endNum = sc.nextInt();
		int temp;
		if(startNum > endNum) {
			temp = startNum;
			startNum = endNum;
			endNum = temp;
		}
	}
	
	public void cal() {
		sum = 0;
		for(int i=startNum; i<=endNum; i++) {
			sum += i;
		}
	}
	
	public void print() {
		System.out.println(startNum + "부터 " + endNum + "까지의 합 : " + sum);
	}
	
}
