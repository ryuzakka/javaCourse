package for_practice;

import java.util.Arrays;
import java.util.Random;

public class Sort_Ex2 {

	public static void main(String[] args) {
		
		int[] num = new int[10];
		Random rand = new Random();
		
		// 임의의 숫자 저장
		for(int i=0; i<num.length; i++) {
			num[i] = rand.nextInt(45)+1;
			System.out.print(num[i] + " ");
		}
		System.out.println();
		
		// java에서 제공하는 라이브러리 이용 (배열의 util)
		Arrays.sort(num);
		
		
		// 출력하여 확인
		for(int i=0; i<num.length; i++) {
			System.out.print(num[i] + " ");
		}
		System.out.println();
		
		
		for(int i=num.length-1; i>=0; i--) {
			System.out.print(num[i] + " ");
		}

	}

}
