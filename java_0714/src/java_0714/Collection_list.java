package java_0714;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Stack;
import java.util.Vector;

public class Collection_list {

	public static void main(String[] args) {
		// Collection => list, set, map
		// List => 데이터의 중복허용, 순서있음
		// Set => 데이터의 중복허용X, 순서없음
		// Map => key값, data값 : key값은 중복X
		// <> => 기본자료형은 사용 못함
		
		// String자료를 하나씩 저장할 수 있는 공간이 생성
		ArrayList<String> list1 = new ArrayList<String>();
		
		list1.add("Antman");
		list1.add("Spiderman");
		list1.add("Ironman");
		
		System.out.println(list1.get(0));	// get(index)
		
		// ----------------------
		
		LinkedList<String> list2 = new LinkedList<String>();
		list2.add("AntMan");
		list2.add("SpiderMan");
		list2.add("IronMan");
		
		System.out.println(list2.get(1));
		
		// ----------------------
		
		Vector<String> list3 = new Vector<String>();
		list3.add("Antman");
		list3.add("Spiderman");
		list3.add("Ironman");
		
		System.out.println(list3.get(2));
		
		// ----------------------
		
		Stack<String> list4 = new Stack<String>();
		list4.add("antman");
		list4.add("spiderman");
		list4.add("ironman");
		
		System.out.println(list4.get(0));
		
		// ----------------------
		
		// List<String> tt = new 위의 모든 클래스의 생성자를 통해 객체 생성이 가능
		// but, List는 옛방식이라 잘 사용하지 않음.
		
	}

}
