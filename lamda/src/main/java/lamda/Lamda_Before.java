package lamda;

public class Lamda_Before {

	public static void main(String[] args) {
		// 인터페이스의 임의구현방식을 통한 객체 생성
		// 인터페이스명 객체명 = new 인터페이스명(){추상메소드구현};
		MyInter my = new MyInter() {
			int kor, eng;
			public void print() {
				System.out.println( kor + eng );
			}
			public void input(int kor, int eng) {
				this.kor = kor;
				this.eng = eng;
			}
		};
		
		my.input(50, 60);
		my.print();
	}

}
