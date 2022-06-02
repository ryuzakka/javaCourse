package exception1;

public class Finally_Ex {

	public static void main(String[] args) {
		int sum = 99;
		int num = 3;
		
		try {
			int avg = sum / num;
			System.out.println(avg);
		}
		catch(ArithmeticException e) {
			System.out.println("0 으로 나눌 수 없어요!");
		}
		finally {	// 예외가 있든 없든 무조건 실행된다. => try~catch문 밖에 작성하는 것과 차이가 없다.
			// try~catch 내용과 연관된 내용들을 정리하는게 좋을 것 같다.
			System.out.println("Finally로 처리를 했을까요? 안했을까요?");
		}
		
		System.out.println("Finally로 처리를 했을까요? 안했을까요?");

	}

}
