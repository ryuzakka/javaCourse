package method;

public class Hap2 {
	// 매개변수 O  리턴값 X
	int startNum, endNum, sum;
	
	public void input(int s, int e) {
		if(s > e) {
			startNum = e;
			endNum = s;
		} else {
			startNum = s;
			endNum = e;
		}
	}
	
	public void cal() {
		sum = 0;
		for(int i=startNum; i<=endNum; i++) {
			sum += i;
		}
	}
	
	public void print() {
		System.out.println(startNum + "부터 " + endNum + "까지의 합 : " + sum);
	}
}
