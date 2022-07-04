package for_practice;

import java.util.Random;

public class Sort_Ex {

	public static void main(String[] args) {
		
		int[] num = new int[10];
		Random rand = new Random();
		
		// 임의의 숫자 저장
		for(int i=0; i<num.length; i++) {
			num[i] = rand.nextInt(45)+1;
			System.out.print(num[i] + " ");
		}
		System.out.println();
		
		// 정렬
		for(int i=0; i<num.length-1; i++) {
			for(int j=i+1; j<num.length; j++) {
				if(num[i] > num[j]) {
					int temp;
					temp = num[i];
					num[i] = num[j];
					num[j] = temp;
				}
			}
		}
		
		// 출력하여 확인
		for(int i=0; i<num.length; i++) {
			System.out.print(num[i] + " ");
		}
		System.out.println();

	}

}
