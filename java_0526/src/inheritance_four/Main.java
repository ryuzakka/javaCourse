package inheritance_four;

import java.util.Date;

public class Main {

	public static void main(String[] args) {
		Date date = new Date();
		System.out.println(date.getMonth()+" "+date.getDate());
		
		MyDate mdate = new MyDate();
		System.out.println(mdate.getHours()+" "+mdate.getMinutes());
	}
	
}
