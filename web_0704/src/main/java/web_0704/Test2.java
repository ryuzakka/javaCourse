package web_0704;

public class Test2 {
	
	public int sum1() {
		int sum = 0;
		
		for(int i=1; i<=100; i++) {
			sum += i;
		}
		
		return sum;
	}
	
	public int sum2() {
		int sum = 0;
		
		for(int i=1; i<=200; i++) {
			if((i%2) == 0) {
				sum += i;
			}
		}
		
		return sum;
	}
	
	public int avg(int kor, int eng, int mat) {
		int avg = (kor+eng+mat) / 3;
		
		return avg;
	}
	
}
