package method;

public class Hap4 {
	// 매개변수 O  리턴값 O
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
	
	public int output() {
		return sum;
	}
}
