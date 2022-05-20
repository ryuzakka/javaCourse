package java_0520;

import java.util.Scanner;

public class Class_Control_Age {
	
	Scanner sc = new Scanner(System.in);
	
	int age;
	
	public void setAge() {
		System.out.print("당신의 나이 : ");
		age = sc.nextInt();
	}
	
	public void entranceYN() {
		if(age < 15)
			System.out.println("15세가 된 후에 오세요.");
		else
			System.out.println("입장하세요.");
	}

}
