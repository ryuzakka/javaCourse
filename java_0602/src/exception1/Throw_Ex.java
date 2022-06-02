package exception1;

public class Throw_Ex {

	public void cal() {
		try {
			int sum = 99;
			int num = 0;
			int avg = sum / num;
			
			System.out.println(avg);
		}
		catch(ArithmeticException e) {
			System.out.println("0으로 나눌 수 없어요.");
		}
	}
	
	public void cal2() throws ArrayIndexOutOfBoundsException {
		int[] lot = new int[3];
		lot[3] = 11;
	}
	
}
