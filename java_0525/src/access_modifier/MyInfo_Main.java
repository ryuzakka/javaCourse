package access_modifier;

public class MyInfo_Main {

	public static void main(String[] args) {
		// getter, setter 실습 
		
		MyInfo myinfo = new MyInfo();
		
		myinfo.setHakbun("123456");
		String hakbun = myinfo.getHakbun();
		System.out.println("학번:" + hakbun);
		
		myinfo.setName("홍길동");
		String name = myinfo.getName();
		System.out.println("이름:" + name);
		
		myinfo.setAge(20);
		int age = myinfo.getAge();
		System.out.println("나이:" + age);
		
		myinfo.setPhone("01012345678");
		String phone = myinfo.getPhone();
		System.out.println("연락처:" + phone);
		
		myinfo.setNumber(1111);
		int number = myinfo.getNumber();
		System.out.println("학과번호:" + number);

	}

}
