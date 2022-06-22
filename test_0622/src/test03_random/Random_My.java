package test03_random;

public class Random_My {
	/*
		3. 자바의 라이브러리를 이용하여 다음과 같은 클래스를 설계하시오.
			1) Random_My 클래스를 만든다.
			2) getNumber() 메소드는 1001 ~ 1220 까지의 임의의 값을 출력한다.
	 */
	public void getNumber() {
		
		double ran = (Math.random() * 220) + 1001;
		int rand = (int)ran;
		
		System.out.println(rand);
	}
	
}
