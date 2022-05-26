package inheritance_first;

import java.util.Random;

public class Lotto {
		
	public int random() {
		
		Random rand = new Random();
		return rand.nextInt(45)+1;
	}
	
}
