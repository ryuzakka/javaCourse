package flowcontrol;

import java.util.Scanner;

public class Ex2 {

	public static void main(String[] args) {
		/*
		 * [ ��������2 ]
		 * ���忡 A��, B��, C��, D���� �ִٰ� ����
		 * ���̸� �Է¹޾Ƽ� 20�� �̸��̸� A��, 
		 * 20�� �̻� 30�� �̸��̸� B��,
		 * 30�� �̻� 40�� �̸��̸� C��,
		 * �������� D������ ����ϱ� 
		 */
		
		System.out.println("** ���� �¼���� �˸� **");
		System.out.print("������ ���̸� �Է����ּ��� : ");
		
		Scanner sc = new Scanner(System.in);
		int age = sc.nextInt();
		
		if(age < 20) System.out.println("A�� �Դϴ�.");
		else if (age < 30) System.out.println("B�� �Դϴ�.");
		else if (age < 40) System.out.println("C�� �Դϴ�.");
		else System.out.println("D�� �Դϴ�.");
	}

}
