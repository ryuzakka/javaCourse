package static_ex;

public class Static_Main {

	public static void main(String[] args) {
		// static 이 부여된 변수와 메소드는 객체(instance) 생성 없이 사용 가능
		// static => 정적
		
		/*
		 * < static 사용방법 >
		 * 클래스명.static변수
		 * 클래스명.static메소드()
		 */
		
		Static_Ex1.eng = 99;
		Static_Ex1.print();
		
		// kor, output()은 static이 아니기 때문에 객체 생성 후 사용.
//		Static_Ex1.kor = 88;
//		Static_Ex1.output();
		
		Static_Ex1 se1 = new Static_Ex1();
		se1.kor = 88;
		se1.output();
		
		System.out.println(se1.eng+" "+se1.kor);
		
	}

}
