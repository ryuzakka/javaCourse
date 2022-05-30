package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Db_Conn {

	public static void main(String[] args) throws Exception {
		
		/* DB 연결 */
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		String dbid = "root";
		String dbpw = "5032";
//		Connection conn = DriverManager.getConnection(db, "아이디", "비밀번호");
		Connection conn = DriverManager.getConnection(db, dbid, dbpw);
		
		/* 데이터 입력 테스트 */
		String sql = "INSERT INTO friend(name, address, age) VALUES('떵이','파주시',24)";
		Statement stmt = conn.createStatement();	// 명령문을 실행해주는 아이(심부름꾼)
			// stmt => 자바소스에 있는 쿼리문을 mysql로 가져가서 실행시키는 객체
		stmt.executeUpdate(sql);
		
		/* 연결 끊기 */
		// 연결이 너무 많이 생기면 접속 에러가 발생할 수 있음
		stmt.close();
		conn.close();
	}

}
