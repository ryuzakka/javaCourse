package flowcontrol;

import java.util.Scanner;

public class If02 {

	public static void main(String[] args) {
		// ������ ������ 3�� �̻��� ��� => if�� �߰��Ͽ� ó��
		// ���������� �Է¹ް� A,B,C,D,F�� ����ϱ�
		
		System.out.println("*** ��� �ý��� ***");
		System.out.print("���������� �Է��Ͻÿ� : ");
		Scanner sc = new Scanner(System.in);
		int kor = sc.nextInt();
		
		if (kor >= 90) {
			System.out.println("������ : A");
		} else if (kor >= 80) {			
			System.out.println("������ : B");
		} else if (kor >= 70) {
			System.out.println("������ : C");			
		} else if (kor >= 60) {
			System.out.println("������ : D");			
		} else {
			System.out.println("������ : F");			
		}
		
	}

}
