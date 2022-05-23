package method;

public class Method01 {
	
	/*
		메소드 : 기능을 정의해 놓은 영역 { }
		메소드의 시작은 {부터 }까지
		메소드 내의 모든 내용은 종료와 동시에 사라진다.
		=> 메소드가 끝이나도 저장하고 싶은 내용은 메소드 밖의 영역에 저장한다. 
	 */
	
	int kor, eng;	// 전역변수
	
	public void test() {
		int a, b, c, d, e, f;	// 지역변수, 멤버변수
		String name, juso, pay;
		a = 1;
		b = 1;
		c = 1;
		d = 1;
		e = 1;
		f = 1;
		name = "홍길동";
		juso = "경기도";
		pay = "56,605,000";
		
		kor = 100;
		eng = 99;
		
		System.out.println(kor + " " + eng);
//		System.out.println(a + " " + name);
	}
	
	public void print() {
		System.out.println(kor + " " + eng);		
	}
	
}
