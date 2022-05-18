package flowcontrol;

public class NumberSum {

	public static void main(String[] args) {
		// 두 숫자의 합
		int a = 90;
		int b = 80;
		int result = a+b;	// 두 수의 합을 새로운 변수에 저장하기
		System.out.println(result);
		System.out.println("----------");
		
		
		// 1부터 10까지의 합 구하기
		int sum = 0;
		for(int i=1; i<=10; i++)		sum += i;
		System.out.println(sum);
		System.out.println("----------");
		
			
		// 1부터 100까지의 합 구하기
		sum = 0;
		for(int i=1; i<=100; i++)	sum += i;
		System.out.println(sum);
		
	}

}
