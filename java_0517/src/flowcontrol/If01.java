package flowcontrol;

public class If01 {

	public static void main(String[] args) {
		/*
		if ���ǹ� : ���ǿ� ���� ����Ǵ� ������ �ٸ� ���
	    ����)	if(����)	{ ����A; }
			else	{ ����B; }
		*/
		
		// ������ ������ 2�������� ���ǿ� ���� �� �߿� �ϳ��� ����
		// ���������� �ԷµǾ����� ������ ���� ������ �����Ѵ�. (�հݱ��� 60�� �̻�)
		
		int kor;
		
		kor = 70;
		
		if(kor >= 60) {
			System.out.println("�հ��Դϴ�.");			
		} else {
			System.out.println("���հ��Դϴ�.");			
		}
		
	}

}
