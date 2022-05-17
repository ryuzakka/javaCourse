package java_0517;

public class Val_Change {

	public static void main(String[] args) {
		// 변수 x의 값과 변수 y의 값을 바꾸기
		int x = 100;
		int y = 9;
		System.out.println(x + " " + y);
		
		int temp;	// 새로운 변수 만들기		
		temp = x;	// 새로운 변수에 x값을 저장
		x = y;		// y의 값을 x에 저장
		y = temp;	// 새로운 변수의 값(이전 x의 값)을 y에 저장
		System.out.println(x + " " + y);

	}

}
