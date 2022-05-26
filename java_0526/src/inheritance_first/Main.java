package inheritance_first;

public class Main {

	public static void main(String[] args) {
		Father father = new Father();
		father.input(80, 90);
		father.cal();
		father.output();
		
		My my = new My();
		my.input(40, 60);
		my.input2(50);
		my.cal();
		my.output();
	}

}
