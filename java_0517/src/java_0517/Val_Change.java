package java_0517;

public class Val_Change {

	public static void main(String[] args) {
		// ���� x�� ���� ���� y�� ���� �ٲٱ�
		int x = 100;
		int y = 9;
		System.out.println(x + " " + y);
		
		int temp;	// ���ο� ���� �����		
		temp = x;	// ���ο� ������ x���� ����
		x = y;		// y�� ���� x�� ����
		y = temp;	// ���ο� ������ ��(���� x�� ��)�� y�� ����
		System.out.println(x + " " + y);

	}

}
