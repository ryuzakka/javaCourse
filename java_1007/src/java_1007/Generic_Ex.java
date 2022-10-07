package java_1007;

public class Generic_Ex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Generic_Test gtest = new Generic_Test();
		gtest.print("하하");
		gtest.print(1234);
		gtest.print(12.34);
		gtest.print(true);
//		gtest.print(new Date());
		
		// 원활한 협업을 위해선 자료형을 명시하여 알 수 있게 하는게 좋다.
		Generic_Test<String> g1 = new Generic_Test<String>();
		Generic_Test<Integer> g2 = new Generic_Test<Integer>();
		Generic_Test<Double> g3 = new Generic_Test<Double>();
		Generic_Test<Boolean> g4 = new Generic_Test<Boolean>();
		g1.print("하하");
		g2.print(1234);
		g3.print(12.34);
		g4.print(true);
	}

}

class Generic_Test<T> {
	
	private T t;	// T 는 임시자료형 (cpp에서 이렇게 시작해버렸음..)
	
	public void print(T t) {
		System.out.println(t);
	}
}