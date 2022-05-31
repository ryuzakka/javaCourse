package inter;

public class Inter_Main {

	public static void main(String[] args) {
		
		/* 인터페이스는 객체를 생성하지 못한다. */
//		Sungjuk sj = new Sungjuk();
		
		/* 인터페이스를 구현한 클래스의 객체를 생성하여 사용한다. */
		Sungjuk_Imp si = new Sungjuk_Imp();
		si.total();
		si.average();
		si.output();
		
	}

}
