package method;

import java.util.Scanner;

public class Method_Main {

	public static void main(String[] args) {
		Method01 method1 = new Method01();
		Scanner sc = new Scanner(System.in);
		
		// 1. 리턴값X  매개변수X
		method1.first();
		
		// 2. 리턴값O  매개변수X
		int sum;
		sum = method1.second();
		System.out.println("합 = " + sum);
		
		// 3. 리턴값X  매개변수O
		method1.third(sc.nextInt(), sc.nextInt());
		
		// 4. 리턴값O  매개변수O
		sum = method1.fourth(sc.nextInt(), sc.nextInt());
		System.out.println("합 = " + sum);
	}

}
