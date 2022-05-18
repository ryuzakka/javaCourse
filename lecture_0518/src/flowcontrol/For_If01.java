package flowcontrol;

public class For_If01 {

	public static void main(String[] args) {
		// 반복문 내에 if문
		// 1. i의 값이 짝수일 때만 출력
		for(int i=1; i<=10; i++) {
			if(i%2 == 0)	System.out.println(i + " 안녕");			
		}
		
		System.out.println("-----");
		
		// 2. i가 4의 배수일 때 출력
		for(int i=1; i<11; i++) {
			if(i%4 == 0)	System.out.println(i + " Hi");
		}
		
	}

}
