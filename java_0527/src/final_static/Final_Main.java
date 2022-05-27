package final_static;

public class Final_Main {

	public static void main(String[] args) {
		
		Final_Ex1 fe1 = new Final_Ex1();
		fe1.kor = 100;
		fe1.test();
		
		Final_Ex2 fe2 = new Final_Ex2(90);
		System.out.println(fe2.kor + " " + fe2.eng);
		
		Final_Ex3 fe3 = new Final_Ex3();
		fe3.print();
		
	}

}
