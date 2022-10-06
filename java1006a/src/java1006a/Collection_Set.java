package java1006a;

import java.util.HashSet;
import java.util.SortedSet;
import java.util.TreeSet;

public class Collection_Set {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// Collection의 Set : 순서 X, 중복 X
		// add(), size()
		
		HashSet<String> set1 = new HashSet<String>();
		
		TreeSet<String> set2 = new TreeSet<String>();
		
		SortedSet<String> set3 = new TreeSet<String>();	// SortedSet은 객체 생성이 안된다.
		
		set1.add("홍길동");
		set1.add("배트맨");
		set1.add("슈퍼맨");
		set1.add("홍길동");
		
		System.out.println(set1);
		
		
		/* Set을 통한 로또 중복 제거 */
//		HashSet<Integer> lotto = new HashSet<Integer>();
		SortedSet<Integer> lotto = new TreeSet<Integer>();
				
		while(lotto.size() < 6) {			
			int num = (int)(Math.random()*45)+1;
			lotto.add(num);
		}
		
		System.out.println(lotto);
		

	}

}
