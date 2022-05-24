package java_0524;

public class Test {
	int[] kor = new int[3];
	int num;
	
	public int[] sung() {
		kor[0] = 10;
		kor[1] = 20;
		kor[2] = 40;
		return kor;
	}
	
	public int test() {
		num = 100;
		return num;
	}
	
	public void chul() {
		for(int i=0; i<kor.length; i++) {
			System.out.print(kor[i] + " ");
		}
		System.out.println();
	}
	
	public void chul2() {
		System.out.println(num);
	}
}
