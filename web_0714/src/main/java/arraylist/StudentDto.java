package arraylist;

// 데이터를 전송하기 위한 클래스
// 하나의 DTO에 하나의 레코드를 담을 수 있게 만든다.

public class StudentDto {
	
	private int id, age;
	private String name, phone;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
