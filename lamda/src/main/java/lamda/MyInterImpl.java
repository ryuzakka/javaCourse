package lamda;

public class MyInterImpl implements MyInter {

	private int kor, eng;
	
	@Override
	public void print() {
		System.out.println( (kor+eng)/2 );
	}
	
	@Override
	public void input(int kor, int eng) {
		this.kor = kor;
		this.eng = eng;
	}
	
}
