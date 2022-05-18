package flowcontrol;

public class Test4 {

	public static void main(String[] args) {
		int sum = 0;
		// 1부터 138까지의 합을 구하기
		for(int i=1; i<=138; i++)
			sum += i;
		System.out.println("1부터 138까지의 합: " + sum);
		
		// 1부터 100까지의 짝수의 합 구하기
		sum = 0;
		for(int i=1; i<=100; i++) {
			if(i%2 == 0)
				sum += i;
			else
				continue;
		}
		System.out.println("1부터 100까지의 짝수의 합: " + sum);
		
		// 1부터 100까지의 4의 배수의 합 구하기
		sum = 0;
		for(int i=1; i<=100; i++) {
			if(i%4 == 0)
				sum += i;
			else
				continue;
		}
		System.out.println("1부터 100까지의 4의 배수의 합: " + sum);
	}

}
