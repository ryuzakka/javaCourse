package flowcontrol;

public class For01 {

	public static void main(String[] args) {
		// 반복문 : for
		/*
		 	for(초기값;조건식;증감값)
		 	{
		  		반복문장;
		 	}
		 */
		
		// 10번 반복 => 1 부터 시작
		for(int i=1; i<=10; i++)
			System.out.println(i + " Hi");
		
		// 10번 반복 => 0 부터 시작
		for(int i=0; i<10; i++)
			System.out.println((i+1) + " 안녕하세요");
		
		// 10번 반복 => i 는 11부터 시작
		for(int i=11; i<21; i++)
			System.out.println((i-10) + " 세번째 인사");
		
	}

}
