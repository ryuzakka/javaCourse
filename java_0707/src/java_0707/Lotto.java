package java_0707;

import java.util.Random;

public class Lotto {

	public static void main(String[] args) {

		int[] lotto = new int[6];
		Random rand = new Random();
		
		for(int i=0; i<lotto.length; i++) {
			lotto[i] = rand.nextInt(45)+1;
			
			for(int j=0; j<i; j++) 
				if(lotto[i] == lotto[j]) 
					i--;
		}
		
		for(int i=0; i<lotto.length; i++) {
			System.out.print(lotto[i] + " ");
		}
		
	}

}
