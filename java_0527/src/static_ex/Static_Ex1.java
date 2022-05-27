package static_ex;

public class Static_Ex1 {
	
	int kor;
	static int eng;	// static은 이탤릭체로 기울어짐
		
	public static void print() {
		// static메소드에서는 static변수만 사용 가능
//		System.out.println(kor);  // kor은 non-static 필드라 static 메소드에서 사용 불가
		System.out.println("print");
	}
	
	public void output() {
		System.out.println(kor);
		System.out.println(eng);
		System.out.println("output");
	}
	
}
