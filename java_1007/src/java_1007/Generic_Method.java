package java_1007;

public class Generic_Method {

	public static void main(String[] args) {
		
		Test_Method gtest = new Test_Method();
		
		gtest.print("하하");
		gtest.print(1234);
		gtest.print(12.34);
		gtest.print(true);
		
		gtest.chul("haha", 333);
		gtest.chul(false, 321);

	}

}


class Test_Method {
	
	public <T> void print(T t) {
		System.out.println(t);
	}
	
	public <M,N> void chul(M m, N n) {
		System.out.println(m+" "+n);
	}
	
}