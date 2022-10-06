package java1006a;

import java.util.HashMap;
import java.util.Hashtable;
import java.util.LinkedHashMap;

public class Collection_Map {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
//		Map<Integer,String> map1 = new Map<Integer,String>();	// 이건 안됨
		
		HashMap<Integer,String> map1 = new HashMap<Integer,String>();
		Hashtable<Integer,String> map2 = new Hashtable<Integer,String>();
		LinkedHashMap<Integer,String> map3 = new LinkedHashMap<Integer,String>();
		
		
		// put(), get(), size()
		map1.put(1, "홍길동");
		map1.put(2, "배트맨");
		map1.put(3, "스파이더맨");
		
		System.out.println(map1);
		System.out.println(map1.toString());
		
		System.out.println(map1.get(2));
		
		// 삭제 : remove(키값)
		map1.remove(1);
		System.out.println(map1);

	}

}
