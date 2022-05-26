package inheritance_second;

import java.util.Scanner;

public class MyHap extends FatherHap {
	int n;
	
	@Override
	public void hap() {
		Scanner sc = new Scanner(System.in);
		n = sc.nextInt();
		sum = 0;
		for(int i=1; i<=n; i++) {
			sum += i;
		}
	}
	public void parentHap() {
		super.hap();
	}
}
