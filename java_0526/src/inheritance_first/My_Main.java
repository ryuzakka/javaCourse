package inheritance_first;

public class My_Main {
	/* 
	 * Lotto클래스를 생성
	 * 1 ~ 45까지의 임의의 값을 리턴해주는 메소드
	 * My_Num 클래스는 Lotto클래스를 상속
	 * My_Main클래스 main()에서 로또 번호 6개를 출력하기
	 */
	public static void main(String[] args) {
		My_Num m = new My_Num();
		int[] ran = new int[6];
		int temp;
		
		for(int i=0; i<ran.length; i++) {			
			temp = m.random();
			
			for(int j=0; j<i; j++) {
				if(ran[j] == temp) {
					temp = m.random();
					break;
				}
			}
			ran[i] = temp;
		}
		
		for(int i=0; i<ran.length; i++)
			System.out.print(ran[i] + " ");
	}

}
