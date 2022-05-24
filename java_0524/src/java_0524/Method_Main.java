package java_0524;

public class Method_Main {

	public static void main(String[] args) {
		
		/* 메소드 호출 */
		
		// 다른 클래스에서는 메소드를 호출하려면
		// 해당 클래스의 객체를 생성한 뒤
		// 객체.메소드() 를 통해서 호출한다.
		
		Method m = new Method();
		
		m.print();
		m.test();
	}

}
