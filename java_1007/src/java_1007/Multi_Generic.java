package java_1007;

public class Multi_Generic {

	public static void main(String[] args) {
		
		Gtest2<String, Integer> g1 = new Gtest2<String, Integer>();
		g1.print("하이요", 123);

	}

}


class Gtest2<T,M> {
	
	private T t;
	private M m;
	
	public void print(T t, M m) {
		System.out.println(t + " " + m);
	}
	
}