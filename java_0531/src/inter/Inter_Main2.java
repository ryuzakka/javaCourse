package inter;

public class Inter_Main2 {

	public static void main(String[] args) {
		// 인터페이스는 객체생성 X
		
		
		/* 구현클래스를 사용하지 않고 임의구현 방식 */
		Sungjuk sj = new Sungjuk() {

			@Override
			public void average() {
				// TODO Auto-generated method stub
				System.out.println("평균");
			}

			@Override
			public void total() {
				// TODO Auto-generated method stub
				System.out.println("합계");
				output();	// 내부에서만 사용가능
			}
			
			int num = 100;
			public void output() {
				System.out.println(num);
			}
			
		};
		
		sj.average();
		sj.total();
		
		/* 임의구현 방식에서 추가된 변수or메소드는 임의구현{} 밖에서는 사용불가 */
//		sj.output();

		
	}

}
