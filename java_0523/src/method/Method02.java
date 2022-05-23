package method;

public class Method02 {
	// 전역변수, 지역변수
	
	int kor = 100;
	int eng = 99;
	
	public void test() {
		kor = 99;
		int eng = 80;
		System.out.println("test-kor:" + kor);
		System.out.println("test-eng:" + eng);
	}
	
	public void ttt() {
		System.out.println("ttt-kor:" + kor);
		System.out.println("ttt-eng:" + eng);
	}
	
}
