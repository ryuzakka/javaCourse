package java_0714;

import java.util.ArrayList;

public class ArrayList_Ex {

	public static void main(String[] args) {
		
		ArrayList<String> list = new ArrayList<String>();
		
		// 값 넣기 => add() : 중복허용
		list.add("antman");
		list.add("spiderman");
		list.add("ironman");
		list.add("antman");
		list.add("spiderman");
		
		// 크기 => size()
		System.out.println(list.size());
		
		// 꺼내기 => get(index)
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i));
		}
		System.out.println("-------------");
		
		// 값 바꾸기 => set(index, value)
		list.set(0, "AntMan");
		
		System.out.println(list.get(0));
		
		// 찾기 => indexOf <-> lastIndexOf()
		int n = list.indexOf("spiderman");
		System.out.println(n);
		
		// 지우기 => remove(index)
		list.remove(3);
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i));
		}
		System.out.println("-------------");
		
		// 전부 지우기 => clear()
		list.clear();
		
		// 객체가 열려있는지, 비어있는지 확인
		System.out.println(list.isEmpty());
		
	}

}
