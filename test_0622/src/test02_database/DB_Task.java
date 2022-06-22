package test02_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class DB_Task {
	/*
		2. Mysql DB를 이용하기 위한 외부 라이브러리를 사용하여 다음과 같은 클래스를 작성한다.
			1) DB_Task 클래스를 만든다
			2) mysql에 test_member라는 테이블을 만들고 이름, 주소, 전화번호 필드를 생성한다.
			3) insert() 메소드는 스캐너로 이름, 주소, 전화번호를 입력받아서 테이블에 저장하는 메소드
			4) select() 메소드는 test_member 테이블의 내용을 콘솔창에 출력한다.
	 */
	public void insert() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		String sql = "INSERT INTO test_member(name, addr, phone) VALUES(?,?,?)"; 
		
		Scanner sc = new Scanner(System.in);
		System.out.println("이름 : ");
		String name = sc.next();
		System.out.println("주소 : ");
		String addr = sc.next();
		addr += sc.nextLine();
		System.out.println("전화번호(번호만 입력) : ");
		String phone = sc.next();
		phone += sc.nextLine();
		phone = phone.replace(" ", "");
		phone = phone.replace("-", "");
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, addr);
		pstmt.setString(3, phone);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
	}
	
	public void select() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		String sql = "SELECT * FROM test_member";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		System.out.println("이름  |  주소  |  전화번호 ");
		while(rs.next()) {
			System.out.print(rs.getString("name") + " | ");
			System.out.print(rs.getString("addr") + " | ");
			System.out.println(rs.getString("phone"));
		}
	}
	
}
