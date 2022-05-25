package string;

public class StringEx2 {

	public static void main(String[] args) {
		// 앞자리, 중간, 뒷자리를 구분하여 출력
		
		String phone = "010-1234-5678";
		
		int dash1 = phone.indexOf("-");
		int dash2 = phone.lastIndexOf("-");
		
		String p1 = phone.substring(0, dash1);
		String p2 = phone.substring(dash1+1, dash2);
		String p3 = phone.substring(dash2+1);

		System.out.println(p1+" "+p2+" "+p3);
	}

}
