package test03_random;

import java.util.Random;

public class Random_Test {
	/*
		3. 자바의 라이브러리를 이용하여 다음과 같은 클래스를 설계하시오.
			1) Random_My 클래스를 만든다.
			2) getNumber() 메소드는 1001 ~ 1220 까지의 임의의 값을 출력한다.
	 */
	public void getNumber() {
		
		Random rand = new Random();
		
		int myNum = rand.nextInt(220) + 1001;
		
		System.out.println(myNum);

	}
	
	public void getNum() {
		
		
		while(true) {
			double ran = (Math.random() * 220) + 1001;
			int rand = (int)ran;
			
			if(rand < 1001 || rand > 1220) {
				System.out.println(rand);
				System.out.println("ERROR!!");
				break;
			}
			else if (rand == 1001 || rand == 1220) {
				System.out.println(rand);
				System.out.println("CHECKED!!");
				break;
			}
			else
				System.out.println(rand);
			
		}
	}
}
