package test;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Random_Num rn = new Random_Num();
		Sungjuk sj = new Sungjuk();
		Hap hap = new Hap();
		
		
		int sum = hap.hap();
		System.out.println(sum);
		
		sum = hap.hapAtoB();
		System.out.println(sum);
		
	}

}
