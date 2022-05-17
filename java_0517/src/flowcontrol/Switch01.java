package flowcontrol;

public class Switch01 {

	public static void main(String[] args) {
		/* switch문 설명
		 * switch : 2개 이상의 실해문장 중 하나를 실행할 때
		 * 
		 * (형식)
		 * switch(변수)
		 * {
		 * 	case 변수의값: 실행문1; break;
		 * 	case 변수의값: 실행문2; break;
		 * 	...
		 * 	default: 실행문;
		 * }
		 */
		
		
		/* << 예제 >>
		 * 원하는 메뉴의 값을 숫자로 입력받는다.
		 * 1. 짜장면
		 * 2. 우동
		 * 3. 짬뽕
		 * 4. 탕수육
		 */
		
		int orderNum = 1;
		
		System.out.println("** 중국음식 키오스크 **");
		System.out.println("1.짜장면  2.우동  3.짬뽕  4.탕수육");
		System.out.println();
		
		switch(orderNum) {
			case 1: System.out.println("짜장면을 선택하셨습니다."); break;
			case 2: System.out.println("우동을 선택하셨습니다."); break;
			case 3: System.out.println("짬뽕을 선택하셨습니다."); break;
			case 4: System.out.println("탕수육을 선택하셨습니다."); break;
			default: System.out.println("잘못 선택하셨습니다.");
		}

	}

}
