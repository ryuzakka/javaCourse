package ramen;

public class Main {

	public static void main(String[] args) {

		Father father = new Father();
		Mother mother = new Mother();
		Son son = new Son();
		Daughter daug = new Daughter();
		
		int su = Ramen.su;
		
		su = father.get_ramen(su);
		su = mother.get_ramen(su);
		su = son.get_ramen(su);
		su = daug.get_ramen(su);
		
		System.out.println(su);
		
	}

}
