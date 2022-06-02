package exception1;

public class Arith {

	public static void main(String[] args) {
		
		int sum = 99;
		int num = 0;
		// int와 int의 나누기는 소숫점이 발생하지 않는다.
		
//		if(num!=0) {
//			int avg = sum / num;
//			System.out.println(avg);			
//		}
		
		/* 나눗셈을 할 때 분모가 0이 되지 않도록 처리해야함. */
		try {
			int avg = sum / num;
			System.out.println(avg);
		} 
		catch(ArithmeticException e) {
			e.printStackTrace();	// 예외 발생시 오류메세지를 출력
			System.out.println("0 으로 나눌 수 없어요!");
		}
		
		System.out.println("Next...");
		
	}

}
