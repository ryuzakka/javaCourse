package exception1;

public class Multi_Ex {

	public static void main(String[] args) {

		
		try {

			int sum = 99;
			int n = 0;
			int avg = sum/n;
			System.out.println(avg);
			
			int[] num = new int[3];
			num[0] = 100;
			num[1] = 99;
			num[2] = 88;
			num[3] = 77;
			System.out.println(num[3]);
			
			String str1 = null;
			String str2 = "hoho";
			if(str1.equals(str2)) {
				System.out.println("같다.");
			}
			
		}
		catch(ArithmeticException e) {
			System.out.println("0 으로 못나눠요.");
		}
		catch(ArrayIndexOutOfBoundsException e) {
			System.out.println("배열 인덱스가 잘못 됐네요.");
		}
		catch(NullPointerException e) {
			System.out.println("null값은 비교할 수 없어요.");
		}
		/* Exception : 모든 예외를 처리 할 수 있다. 다만 어떤 예외가 발생했는지는 모른다. */
		catch(Exception e) {	// 단독이 아닌 경우에는 Exception은 무조건 마지막 catch문에 위치해야함.
			System.out.println("원인 모를 예외가 발생했습니다.");
		}
		
		System.out.println("next...");
		
	}

}
