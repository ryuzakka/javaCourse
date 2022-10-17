package lamda;

public class YourInter_NonLamda {

	public static void main(String[] args) {
		
		YourInter yi = new YourInter() {
			public void output() {
				System.out.println("임의 구현방식을 통해 추상메소드 재정의");
				
			}
		};
		
		yi.output();
	}
	
}
