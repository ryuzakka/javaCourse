package java_0708;

public class Operator_Test {

	public static void main(String[] args) {
		// 비교연산자 => true, false
		
		int kor = 90;
		int eng = 80;
		
		// 두 과목이 있다고 할 때
		// 어머니가 두 과목 80점 이상이면 자동차를 사준다..
		// 1. kor, eng 둘다 80점 이상
		// 2. 1과목 80점 넘는 경우
		// 3. 둘다 80점 미만
		
		// type 1.
		if(kor >= 80) {
			if(eng >= 80) {
				System.out.println("차 사줄게!");
			} else {
				System.out.println("없었던걸로!");
			}
		} else {
			System.out.println("없었던걸로!");
		}
		
		
		// type 2.
		if((kor >= 80) && (eng >= 80)) {
			System.out.println("차 사줄게!");
		} else {
			System.out.println("없었던걸로!");
		}
		
	}

}
