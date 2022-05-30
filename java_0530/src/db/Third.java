package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;



public class Third {

	public static void main(String[] args) throws Exception {
		/*
		   1. DB에 command로 접속하기
			- member 테이블 만들기
			- 	bunho: 번호,
				name: 이름, 
				phone:전화번호, 
				age: 나이

			2. 1번 심부름꾼을 통해서 111, 홍길동, 010-1234-5678, 42 입력
			(First.java)
			3. Scanner를 통해 2번의 동작을 하는 것 만들기 (1번 심부름꾼)
				(Second.java)
			4. 3번을 2번 심부름꾼으로 만들기
				(Third.java)
		 */
		
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		String dbid = "root";
		String dbpw = "5032";
		Connection conn = DriverManager.getConnection(db, dbid, dbpw);
		
		Scanner sc = new Scanner(System.in);
		
		int bunho = sc.nextInt();

		sc.nextLine();
		String name = sc.nextLine();

		String temp = sc.nextLine();
		String phone = temp.replace(" ", "-");

		int age = sc.nextInt();
		
		String sql = "INSERT INTO member(bunho, name, phone, age) VALUES(?,?,?,?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bunho);
		pstmt.setString(2, name);
		pstmt.setString(3, phone);
		pstmt.setInt(4, age);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
	}

}
