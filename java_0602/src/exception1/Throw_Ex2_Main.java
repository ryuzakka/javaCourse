package exception1;

public class Throw_Ex2_Main {

	public static void main(String[] args) {		// TODO Auto-generated method stub
		Throw_Ex2 te2 = new Throw_Ex2();
		try {
			te2.test();
		}
		catch(ArithmeticException e) {
			System.out.println("No 0");
		}
		
		System.out.println("continue next");
	}

}
