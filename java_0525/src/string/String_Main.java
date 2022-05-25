package string;

public class String_Main {

	public static void main(String[] args) {
		
		String str = "반갑습니다"; 
		// 클래스이므로 new연산자를 통해 객체를 생성
		// 단, 사용자를 위해 기본 자료형처럼 사용할 수 있게 제공
		String name = new String("홍길동");
		
//		System.out.println(str);
//		System.out.println(name);
		
		
		// charAt() : index 값에 해당되는 문자를 리턴
		String ex1 = "학교종이 땡땡땡 어서 모이자";
		char c = ex1.charAt(6);
		System.out.println("charAt(6): " + c);
		
		// length() : 문자열의 길이를 리턴
		int leng = ex1.length();
		System.out.println("length: " + leng);
		
		// replace() : 문자열 내용을 바꾸기
		String ex2 = ex1.replace("땡땡땡", "딩동댕");
		System.out.println("replace: " + ex2);
		
		// indexOf() : 특정 문자를 찾을 때 => 찾은 후 해당 문자의 index를 리턴
			// 무조건, 앞에서부터 검색하여 처음 만나는 문자의 위치
		String test = "java programming";
		int n = test.indexOf("g");
		System.out.println("인덱스: " + n);
		
		// lastIndexOf() : 특정 문자를 찾을 때 => 찾은 후 해당 문자의 index를 리턴
			// 무조건, 뒤에서부터 검색하여 처음 만나는 문자의 위치
		int m = test.lastIndexOf("g");
		System.out.println("last인덱스: " + m);
		
		// substring() : 문자열에서 특정부분을 잘라서 리턴
		String ex3 = "내가 그린 그림은 기린그림";
		String result = ex3.substring(0, 6);
		// 첫번째 인덱스부터 두번째 인덱스의 앞까지
		System.out.println(result);
		result = ex3.substring(6);
		System.out.println(result);
		
	}

}
