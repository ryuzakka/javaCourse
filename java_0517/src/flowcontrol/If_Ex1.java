package flowcontrol;

import java.util.Scanner;

public class If_Ex1 {

	public static void main(String[] args) {
		// ���� ������ �ܼ�â���� �Է¹ް� 60�� �̻��̸� �հ�, �̸��̸� ���հ� ����ϱ�
		
		int englishScore;
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("���� ������ �Է��Ͻÿ� : ");
		englishScore = sc.nextInt();
		
		if(englishScore < 60) {
			System.out.println("���հ��̳׿�.");
		} else {
			System.out.println("�հ��Դϴ�.");
		}

	}

}
