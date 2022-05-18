package flowcontrol;

import java.util.Scanner;

public class Break01 {

	public static void main(String[] args) {
		// break, continue
		
		// 1. for문에서  break 사용하기
		for(int i=1; i<=10; i++) {
			System.out.println(i + " 뿅");
			if (i > 5) break;
		}

		// 2. for문에서 continue 사용하기
		for(int i=1; i<11; i++) {
			System.out.println(i + " 하이");
			if(i%2 == 0) {
				continue;
			}
			System.out.println("ㅎㅎㅎ");
		}
		
		// 3. while문의 형태를 for문으로 만들기
		Scanner sc = new Scanner(System.in);
		for(;;) {	// 무한반복
			if (sc.nextInt() != 0)	System.out.println("하하");
			else {
				System.out.println("The End");
				break;
			}
		}
	}

}
