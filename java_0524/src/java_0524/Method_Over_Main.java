package java_0524;

public class Method_Over_Main {

	public static void main(String[] args) {

		// 메소드도 오버로딩이 가능하다.
		
		Method_Over mo = new Method_Over();
		
		mo.average(90);
		mo.average(90, 60);
		mo.average(90, 70, 80);

	}

}
