package for_practice;

public class For_Ex {

	public static void main(String[] args) {
		
		for(int i=1; i<=10; i++) {
			System.out.print("*");
			
			// 한 번의 반복 문장 내에서 또 다른 반복이 필요할 때
			// * 뒤에 % 글자를 10개씩 출력하기
//			for(int j=(10-i); j<10; j++) {
			for(int j=1; j<=i; j++) {
				System.out.print("%");
			}
			
			System.out.println();
		}

	}

}
