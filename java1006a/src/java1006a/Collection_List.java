package java1006a;

import java.util.Collection;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Stack;
import java.util.Vector;

public class Collection_List {

	public static void main(String[] args) {
		
//		Collection<String> test = new ArrayList<String>();
		// 이렇게 생성해도 되지만, 상속받은 클래스에서 추가/변형된 기능은 사용할 수 없음
//		List<String> list = new ArrayList<String>();	// 옛날에는 List도 사용했음
		
		
		/* Collection의 종류 예시 */
		// add(), get(), size()
		ArrayList<String> list1 = new ArrayList<String>();
		list1.add("홍길동");
		list1.add("스파이더맨");
		list1.add("배트맨");
		list1.add("홍길동");
		
		LinkedList<String> list2 = new LinkedList<String>();
		
		Vector<String> list3 = new Vector<String>();
		list3.add("홍길동");
		list3.add("스파이더맨");
		list3.add("배트맨");
		list3.add("홍길동");
		
		Stack<String> list4 = new Stack<String>();
		
		
//		System.out.println(list1);
//		System.out.println(list1.toString());
		
		System.out.println(list3);
		for(int i=0; i<list3.size(); i++) {
			System.out.println(list3.get(i));
		}
		
	}

}
