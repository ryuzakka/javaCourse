package flowcontrol;

public class Switch01 {

	public static void main(String[] args) {
		/* switch�� ����
		 * switch : 2�� �̻��� ���ع��� �� �ϳ��� ������ ��
		 * 
		 * (����)
		 * switch(����)
		 * {
		 * 	case �����ǰ�: ���๮1; break;
		 * 	case �����ǰ�: ���๮2; break;
		 * 	...
		 * 	default: ���๮;
		 * }
		 */
		
		
		/* << ���� >>
		 * ���ϴ� �޴��� ���� ���ڷ� �Է¹޴´�.
		 * 1. ¥���
		 * 2. �쵿
		 * 3. «��
		 * 4. ������
		 */
		
		int orderNum = 1;
		
		System.out.println("** �߱����� Ű����ũ **");
		System.out.println("1.¥���  2.�쵿  3.«��  4.������");
		System.out.println();
		
		switch(orderNum) {
			case 1: System.out.println("¥����� �����ϼ̽��ϴ�."); break;
			case 2: System.out.println("�쵿�� �����ϼ̽��ϴ�."); break;
			case 3: System.out.println("«���� �����ϼ̽��ϴ�."); break;
			case 4: System.out.println("�������� �����ϼ̽��ϴ�."); break;
			default: System.out.println("�߸� �����ϼ̽��ϴ�.");
		}

	}

}
