package java_0517;

import java.util.Scanner;

public class Input4 {

	public static void main(String[] args) {
		
		// ����, ����, ���� 3������ ������ �Է¹ޱ�
		int kor, eng, mat;
		
		Scanner sc = new Scanner(System.in);
		System.out.print("����: ");
		kor = sc.nextInt();
		System.out.print("����: ");
		eng = sc.nextInt();
		System.out.print("����: ");
		mat = sc.nextInt();
		
		// ������ ���� ����ϱ�
		System.out.println();
		System.out.println("���� ������ " + kor + "�Դϴ�.");
		System.out.println("���� ������ " + eng + "�Դϴ�.");
		System.out.println("���� ������ " + mat + "�Դϴ�.");
		System.out.println("3������ �հ������� " + (kor+eng+mat) + "�Դϴ�.");
		
		// ������ ����� ����ϱ�
		int avg = (kor + eng + mat) / 3;
		System.out.println();
		System.out.println("3������ ��������� " + avg + "�Դϴ�.");

	}

}
