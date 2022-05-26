package inheritance_third;

public class Main {

	public static void main(String[] args) {
		// 클래스의 객체 생성시 항상 생성자가 동작
//		Father father = new Father();
//		My my = new My();
		
		// 상속받으면 생성자는 어떻게 동작할까?
		My my = new My();
		my.test();
		my.output();
	}

}
