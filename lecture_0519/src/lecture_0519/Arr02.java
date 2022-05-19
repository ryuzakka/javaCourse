package lecture_0519;

import java.util.Scanner;

public class Arr02 {

	public static void main(String[] args) {

		int[] arr = new int[10000];
		
		for(int i=0; i<10000; i++) {
//			System.out.println(Math.random()*10);
			arr[i] = (int)(Math.random() * 100);
		}
		for(int i=0; i<10000; i++) {
			System.out.println(arr[i]);
		}
	}

}
