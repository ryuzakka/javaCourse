package lamda;

public class YourInter2_Para_One {

	public static void main(String[] args) {
		// 매개변수가 있는 경우
		YourInter2 y2 = (x) -> {
			int kk = x + 10;
			System.out.println(kk);
		};
		y2.output(100);
		
		// 약식
		y2 = (x) -> System.out.println(x+10);
		y2.output(1);

	}

}
