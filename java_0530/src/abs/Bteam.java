package abs;

public class Bteam extends Abstract1 {

	void check() {
		if(kor >= 90) {
			System.out.println("A");
		}
		else if(kor >= 80) {
			System.out.println("B");
		}
		else if(kor >= 70) {
			System.out.println("C");
		} else {
			System.out.println("D");
		}
	}
}
