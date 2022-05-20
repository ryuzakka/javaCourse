package java_0520;

public class Class_Control_Test4 {
	
	int sum;
	/*
	 * 클래스의 멤버변수의 숫자형 변수는
	 * 객체가 생성될 때 0으로 초기화
	 */
	
	public void to138() {
		sum = 0;
		for(int i=1; i<=138; i++) {
			sum += i;
		}
		System.out.println("1부터 138까지의 합: " + sum);
	}
	
	public void evenNumTo100() {
		sum = 0;
		for(int i=1; i<=100; i++) {
			if(i%2 == 0)
				sum += i;
		}
		System.out.println("1부터 100까지의 짝수의 합: " + sum);
	}
	
	public void fourTimesTo100() {
		sum = 0;
		for(int i=1; i<=100; i++) {
			if(i%4 == 0)
				sum += i;
		}
		System.out.println("1부터 100까지의 4의 배수의 합: " + sum);
	}

}
