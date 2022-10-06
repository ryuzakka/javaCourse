package java1006a;

import java.util.ArrayList;

public class ArrayList_Ex {

	public static void main(String[] args) {
		
		ArrayList<String> list = new ArrayList<String>();
		
		list.add("홍길동");
		list.add("스파이더맨");
		list.add("배트맨");
		list.add("홍길동");
		
		list.set(1, "앤트맨");
		System.out.println(list);
		
		// 찾기
		int ck = list.indexOf("배트맨");
		System.out.println("찾기: "+ck);
		
		// 삭제하기
		list.remove(1);
		System.out.println("삭제하기: "+list);
		
		// 모든값 지우기
		list.clear();
		System.out.println("모든값 지우기: "+list);
		
		// 비어있는지 확인
		System.out.println("비었는지 확인: "+list.isEmpty());
		list.add("뽀로로");
		System.out.println("비었는지 확인: "+list.isEmpty());
		
	}
	
}
