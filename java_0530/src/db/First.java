package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class First {

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
		
		String sql = "INSERT INTO member(bunho, name, phone, age) VALUES(111, '홍길동', '010-1234-5678', 42)";
		
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
		conn.close();
		
	}

}
