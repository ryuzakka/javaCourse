package flowcontrol;

import java.util.Scanner;

public class Test3 {

	public static void main(String[] args) {
		// 당신의 소주 주량을 입력받는다(정수로 입력받기)
		// 0병이면 "부럽습니다" 라고 출력
		// 1병이면 "적당히 마시네요" 라고 출력
		// 2병이면 "많이 마시네요" 라고 출력
		// 3병이면 "너무 많은거 아닌가요" 라고 출력
		// 4병이상이면 "큰일 나요" 라고 출력
		
		Scanner sc = new Scanner(System.in);
		
		int liq;
		
		System.out.print("당신의 소주 주량은 어떻게 되십니까? ");
		liq = sc.nextInt();
		
		if(liq < 0) {
			System.out.println("음수를 입력하시면 안됩니다.");
		} else {
			switch(liq) {
			case 0: System.out.println("부럽습니다"); break;
			case 1: System.out.println("적당히 마시네요"); break;
			case 2: System.out.println("많이 마시네요"); break;
			case 3: System.out.println("너무 많은거 아닌가요"); break;
			default: System.out.println("큰일 나요");
			}			
		}
	}

}
