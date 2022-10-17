package lamda;

public class YouInter_Lamda {

	public static void main(String[] args) {
		// 매개변수가 없는 경우
		
		// 람다식 type 1
		YourInter yi = () -> {
			System.out.println("람다식으로 했어요");
		};
		yi.output();
		
		// 람다식 type 2
		yi=() -> System.out.println("이것도 람다식");
		yi.output();
		

	}

}
