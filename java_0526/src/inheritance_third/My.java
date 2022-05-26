package inheritance_third;

public class My extends Father {
	
	My() {
//		super();	// 부모클래스의 생성자는 생략되어 있지만 동작함
		/* My()생성자를 호출하면 동작을 하기전에
		 * 상속을 받았는지 확인하기 위해
		 * 자동으로 부모클래스의 생성자를 호출함
		 */
		System.out.println("My");
	}
	
	int eng;
	public void test() {
		System.out.println("Thurs");
	}

}
