package flowcontrol;

import java.util.Scanner;

public class Ex1 {

	public static void main(String[] args) {
		/*
		 * [ ��������1 ]
		 * �� ���� ���ڸ� �Է¹ޱ�(Scanner)
		 * ������� ������ ���� ���� �Է¹ޱ�
		 * 	1:+
		 * 	2:-
		 * 	3:*
		 * 	4:/
		 * �ԷµǴ� ���� ���� �ϳ��� ���길 �����ϱ�
		 */
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("ù��° ���ڸ� �Է��Ͻÿ� : ");
		int num1 = sc.nextInt();
		System.out.print("�ι�° ���ڸ� �Է��Ͻÿ� : ");
		int num2 = sc.nextInt();
		System.out.println("�� ���ڸ� ��� �����ұ��?");
		System.out.println("1:+,  2:-,  3:*,  4:/");
//		int opNum = sc.nextInt();
//		
//		switch(opNum) {
//			case 1: System.out.println("�� ������ �� = " + (num1+num2)); break;
//			case 2: System.out.println("�� ������ �� = " + (num1-num2)); break;
//			case 3: System.out.println("�� ������ �� = " + (num1*num2)); break;
//			case 4: System.out.println("�� ������ ������ = " + (num1/num2)); break;
//			default: System.out.println("�߸��� �����ڸ� �����߽��ϴ�.");
//		}
		
		char oper = sc.next().charAt(0);
		switch(oper) {
			case '+': System.out.println("�� ������ �� = " + (num1+num2)); break;
			case '-': System.out.println("�� ������ �� = " + (num1-num2)); break;
			case '*': System.out.println("�� ������ �� = " + (num1*num2)); break;
			case '/': System.out.println("�� ������ ������ = " + (num1/num2)); break;
			default: System.out.println("�߸��� �����ڸ� �����߽��ϴ�.");
		}
	}

}
