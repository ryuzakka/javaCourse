package java_0708;

public class Operator_Test2 {

	public static void main(String[] args) {

		// 어머니가 국어, 영어 중에 하나라도 90점이 넘으면 집을 사준다.
		
		int kor = 90;
		int eng = 70;
		
		// type 1.
		if(kor >= 80) {
			System.out.println("집 사준다");
		}
		else if(eng >= 80) {
			System.out.println("집 사준다");
		}
		else {
			System.out.println("없던걸로~");
		}
		
		// type 2.
		if( (kor >= 80) || (eng >= 80) ) {
			System.out.println("집 사준다");
		} else {
			System.out.println("없던걸로~");
		}

	}

}
