package flowcontrol;

import java.util.Scanner;

public class If_Ex2 {

	public static void main(String[] args) {
		// ���̸� �Է� �޾Ƽ� 20�� �̻��̸� "�������"�� ���. 20�� �̸��̸� "������ ������"�� ���.
		
		
		// ���̸� �Է� ���� �غ��ϱ�
		Scanner sc = new Scanner(System.in);
		int age;
		// ���� ����� 
		System.out.println("*** ���� ***");
		System.out.print("���̸� �Է��Ͻÿ� : ");
		// ���� �Է¹ޱ�		
		age = sc.nextInt();
		
		// 20���� �������� ���ǹ��� ���
		if (age < 20) {
			System.out.println("�̼����ڴ� �̿��Ͻ� �� �����ϴ�.");
		} else {
			System.out.println("�������.");
		}
	}

}
