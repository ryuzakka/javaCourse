package exception1;

public class ArrayErr {

	public static void main(String[] args) {
		
		int[] num = new int[3];
		
		/* 배열에 존재하지 않은 인덱스 번호를 입력하는 경우 예외처리가 필요함 */
		try {
			num[0] = 100;
			num[1] = 99;
			num[2] = 88;
			num[3] = 77;
			
			System.out.println(num[3]);
			System.out.println("다음에 실행될 내용");
		} 
		catch(ArrayIndexOutOfBoundsException e) {
			e.printStackTrace();
			System.out.println("배열 밖으로");
		}
		
		System.out.println("Next...");
	}

}
