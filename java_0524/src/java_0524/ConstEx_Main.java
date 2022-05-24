package java_0524;

public class ConstEx_Main {

	public static void main(String[] args) {
		/* 1번 예제 */
			// a부터 b까지의 합을 구해서 출력하는 클래스
			// a, b 값을 생성자를 통해 초기화
			// 합을 구하는 메소드, 출력하는 메소드 2개를 생성
//		ConstEx1 ce1 = new ConstEx1(2, 5);
//		ce1.cal();
//		ce1.print();
		
		
		/* 2번 예제 */
			// 1~100 까지의 합
			// 1~b 까지의 합
			// a~b 까지의 합
			// 위의 동작을 하는 클래스를 만들고자 한다.
			// 단, 값의 초기화는 생성자를 통해서 한다.
		ConstEx2 ce2a = new ConstEx2();		
		ce2a.cal();
		ce2a.print();
		
		ConstEx2 ce2b = new ConstEx2(87);
		ce2b.cal();
		ce2b.print();
		
		ConstEx2 ce2c = new ConstEx2(17,87);
		ce2c.cal();
		ce2c.print();
		
		
		/* 3번 예제 */
			// 생성자의 매개변수 갯수가 같지만 구분하는 방법
			// 매개변수의 자료형이 다르면 가능
		ConstEx3 ce31 = new ConstEx3();
		ConstEx3 ce32 = new ConstEx3(91);
		ConstEx3 ce33 = new ConstEx3('A');
		
		ConstEx3 ce34 = new ConstEx3(1, 100, 'e');
		ConstEx3 ce35 = new ConstEx3("HI", 3, 9);
		ConstEx3 ce36 = new ConstEx3(3.14, 9, 9);
		
		
		
	}

}
