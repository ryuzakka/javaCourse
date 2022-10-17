package lamda;

public class MyInterImpl2 implements MyInter {

	private int kor, eng;
	
	@Override
	public void print() {
		System.out.println( kor + eng );
	}
	
	@Override
	public void input(int kor, int eng) {
		this.kor = kor;
		this.eng = eng;
	}
	
}
