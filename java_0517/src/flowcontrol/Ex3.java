package flowcontrol;

import java.util.Scanner;

public class Ex3 {

	public static void main(String[] args) {
		/*
		 * [ �������� 3]
		 * �� ���� ���ڸ� �Է¹ޱ�
		 * ū ������ ���� ���� �� ���� ���
		 */
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("�� ���� ���ڸ� �Է����ּ���.");
		
		System.out.print("ù��° ���� : ");
		int num1 = sc.nextInt();
		System.out.print("�ι�° ���� : ");
		int num2 = sc.nextInt();
		
		if (num1 > num2)
			System.out.println("�� ���ڴ� " + (num1-num2) + "��ŭ ���̰� ���ϴ�.");
		else
			System.out.println("�� ���ڴ� " + (num2-num1) + "��ŭ ���̰� ���ϴ�.");			
		
//		int chk = num1/num2;
//		switch(chk) {
//			case 0: System.out.println(num2-num1); break;
//			default: System.out.println(num1-num2);
//		}
	}

}
