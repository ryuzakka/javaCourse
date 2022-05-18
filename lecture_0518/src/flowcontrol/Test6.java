package flowcontrol;

import java.util.Scanner;

public class Test6 {
   public static void main(String[] args) {
	   // 요일을 숫자로 입력받기 (일:0, 월:1, 화:2 .....)
	   // switch로 처리하기
	   // 일요일이면 "즐거운 일요일입니다" 출력
	   // 월요일이면 "즐거운 한주를 시작합시다" 출력
	   // 화요일이면 "벌써 2일째 입니다" 출력
	   // 수요일이면 "반이 지나갑니다" 출력
	   // 목요일이면 "조금만 힘내세요" 출력
	   // 금요일이면 "즐거운 불금입니다" 출력
	   // 토요일이면 "푹 잡시다" 출력
	   
	   Scanner sc = new Scanner(System.in);
	   
	   System.out.println("** 요일 선택하기 **");
	   System.out.println("일:0, 월:1, 화:2, 수:3, 목:4, 금:5, 토:6");
	   int dayOfWeek = sc.nextInt();
	   
	   switch(dayOfWeek) {
		   case 0: System.out.println("즐거운 일요일입니다"); break;
		   case 1: System.out.println("즐거운 한주를 시작합시다"); break;
		   case 2: System.out.println("벌써 2일째 입니다"); break;
		   case 3: System.out.println("반이 지나갑니다"); break;
		   case 4: System.out.println("조금만 힘내세요"); break;
		   case 5: System.out.println("즐거운 불금입니다"); break;
		   case 6: System.out.println("푹 잡시다"); break;
		   default: System.out.println("존재하지 않은 요일 입니다.");
	   }
   }
}
