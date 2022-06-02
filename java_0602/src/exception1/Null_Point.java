package exception1;

public class Null_Point {

	public static void main(String[] args) {

		String str1 = null;	// 변수의 값을 null로 비워주는 것도 초기값 설정을 했다고 볼 수 있다.
		String str2 = "gogo";
		
		System.out.println(str1);
		
		try {
			/* str1 변수를 null로 초기화는 했지만 값이 비어있기 때문에 빈 값으로 연산을 하지 못한다. */
			if(str1.equals(str2)) {
				System.out.println("equal");
			}			
		}
		catch(NullPointerException e) {
			e.printStackTrace();
			System.out.println("Null값은 비교를 하지 못합니다.");
		}
		
		System.out.println("Next...");
	}

}
