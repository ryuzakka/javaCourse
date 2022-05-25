package string;

public class StringEx1 {

	public static void main(String[] args) {
		// 연습문제
		
		/* 아이디와 서버주소를 분리하여 출력하시오. */
		String email = "goalki@naver.com";
		
		int atNum;
		atNum = email.indexOf("@");
		
		String id, domain;
		id = email.substring(0, atNum);
		domain = email.substring(atNum+1);
		
		System.out.println("아이디: " + id);
		System.out.println("서버주소: " + domain);

	}

}
