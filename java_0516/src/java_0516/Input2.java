package java_0516;

import java.util.Scanner;

public class Input2 {

	public static void main(String[] args) {
		
		// kor, eng ���� ���� �����
		int kor;
		int eng;
		
		// Scanner�� ���� �� �Է��ϱ�
		Scanner sc = new Scanner(System.in);
		
		System.out.println("ù��° ���ڸ� �Է��ϼ���.");
		kor = sc.nextInt();
		System.out.println("ù��° ���� = " + kor);
		System.out.println("�ι�° ���ڸ� �Է��ϼ���.");
		eng = sc.nextInt();
		System.out.println("�ι�° ���� = " + eng);

		// ��� : kor�� eng ���� ���Ͽ� ����ϱ�
		System.out.println("ù��° ���ڿ� �ι�° ������ �� = " + (kor+eng));

	}

}
