package java1006a;

import java.util.HashSet;
import java.util.Iterator;

public class HashSet_Ex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		HashSet<String> set = new HashSet<String>();
		
		set.add("홍길동");
		set.add("배트맨");
		set.add("슈퍼맨");
		System.out.println(set);
		
		
		// 삭제하기 : remove
		set.remove("홍길동");
		System.out.println(set);
		
		
		// 하나씩 접근하기
		Iterator<String> newSet = set.iterator();
		while(newSet.hasNext()) {
			System.out.println(newSet.next());
		}
		
		
		// 전체 삭제하기
		set.clear();
		System.out.println(set);
		System.out.println(set.isEmpty());
		

	}

}
