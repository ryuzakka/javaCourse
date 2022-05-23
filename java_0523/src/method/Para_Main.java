package method;

public class Para_Main {

	public static void main(String[] args) {
		
		Para_Test pt = new Para_Test();
		
		pt.test1(11, 11, 12, 12L);
		pt.test2('r');
		pt.test3(1.2f, 1.3);
		pt.test4(true);
		
		// 배열, 클래스
//		int[] lotto = new int[6];
		
		// 배열의 초기화 => {} 안에 ,로 구분된 값
		int[] lotto = {12, 5, 6, 25, 38, 41};
		pt.test5(lotto);
		
		
		String name = "홍길동";
		int age = 33;
		String juso = "경기도 고양시";
		double height = 178.5;
		char kor = 'A';
		
		// 클래스를 통해 전달
		DataBox db = new DataBox();
		db.name = name;
		db.age = age;
		db.juso = juso;
		db.height = height;
		db.kor = kor;
		
		pt.test6(db);
	}

}
