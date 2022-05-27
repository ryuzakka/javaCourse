package yesterday_review;

public class My extends Father {

	My(int n) {
		/*
		 * 부모클래스 생성자에 매개변수가 필요할 때
		 * 매개변수를 전달하지 않으면 에러
		 */
		super(n);
		System.out.println("My");
	}
}
