package flowcontrol;

import java.util.Scanner;

public class If_Ex3 {

	public static void main(String[] args) {
		/*
		 * ���ϴ� �޴��� ���� ���ڷ� �Է¹޴´�.
		 * 1. ¥���
		 * 2. �쵿
		 * 3. «��
		 * 4. ������
		 */
		
		System.out.println("** �߱����� Ű����ũ **");
		System.out.println("1.¥���  2.�쵿  3.«��  4.������");
		System.out.print("�ֹ��Ͻ� �޴��� �������ּ��� : ");
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		
		if ( num == 1 )	System.out.println("¥����� �����ϼ̽��ϴ�.");
		else if ( num == 2 ) System.out.println("�쵿�� �����ϼ̽��ϴ�.");			
		else if ( num == 3 ) System.out.println("«���� �����ϼ̽��ϴ�.");
		else if ( num == 4 ) System.out.println("�������� �����ϼ̽��ϴ�.");
		else System.out.println("�߸� �����ϼ̽��ϴ�.");
		
	}

}
