package access_modifier;

public class MyInfo {
	
	private String hakbun;
	private String name;
	private int age;
	private String phone;
	private int number;
	
	/*
	 * 많은 속성들에 접근하는 메소드의 명칭문제가 발생함
	public void a1(String hakbun) {
		this.hakbun = hakbun;
	}
	public String b1() {
		return hakbun;
	}
	*/
	
	// setter
	public void setHakbun(String hakbun) {
		this.hakbun = hakbun;
	}
	
	// getter
	public String getHakbun() {
		return hakbun;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	public int getAge() {
		return age;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhone() {
		return phone;
	}
	
	public void setNumber(int number) {
		this.number = number;
	}
	public int getNumber() {
		return number;
	}
	
}
