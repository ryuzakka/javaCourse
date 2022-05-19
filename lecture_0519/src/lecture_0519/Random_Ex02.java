package lecture_0519;

import java.util.Random;
import java.util.Scanner;

public class Random_Ex02 {

	public static void main(String[] args) {
		// 밥 내기. 6명의 이름을 입력 후 랜덤 뽑기.
		
		Scanner sc = new Scanner(System.in);
		Random rand = new Random();		
		String[] list = new String[6];
		
		for(int i=0; i<list.length; i++) {
			list[i] = sc.next();
		}
		
		int n = rand.nextInt(6);
		
		System.out.println(list[n]);

	}

}
