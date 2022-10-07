package java_1007;

import java.util.Date;

public class NonGeneric {
	// 하나의 java파일 안에는 반드시 파일명과 동일한 public클래스가 있어야함
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Test t = new Test();
		t.print("하하");
		t.print(1234);
		t.print(true);
		
		Test2 t2 = new Test2();
		t2.print(new Date());

	}

}

// 하나의 java파일 안에는 여러 클래스를 만들 수 있다. => 하지만 권장하지 않음
class Test {
	public void print(String str) {
		System.out.println(str);
	}
	public void print(int str) {
		System.out.println(str);
	}
	public void print(boolean str) {
		System.out.println(str);
	}
}

class Test2 {
	public void print(Date date) {
		System.out.println(date);
	}
}