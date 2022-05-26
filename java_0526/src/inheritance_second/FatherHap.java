package inheritance_second;

public class FatherHap {
	int sum;
	public void hap() {
		sum = 0;
		for(int i=1; i<=100; i++) {
			sum += i;
		}
	}
	public void output() {
		System.out.println("합:" + sum);
	}
}
