package string;

public class StringEx3 {

	public static void main(String[] args) {
		
		// 잘라서 출력
		String card = "4567-4561-1234-8526";
		
		// split() : 특정문자로 잘라서 배열로 리턴
		String[] cardNum = card.split("-"); 
		
		for(int i=0; i<cardNum.length; i++) {
			System.out.println(cardNum[i]);
		}

	}

}
