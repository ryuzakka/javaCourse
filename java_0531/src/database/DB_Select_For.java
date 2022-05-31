package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DB_Select_For {

	public static void main(String[] args) throws Exception {
		/* DB에 있는 member 테이블에 있는 값을 가져오기 */
		
		// DB 연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		// 쿼리문 작성
		String sql = "select * from member";
		
		// 심부름꾼 생성
		Statement stmt = conn.createStatement();

		// 집계 쿼리문 실행
		ResultSet rs = stmt.executeQuery(sql);	// SELECT문일 경우는 executeQuery()를 사용.
		
		/* rs로 레코드 갯수 추출하기 */
		rs.last();	// 마지막 레코드로 이동
		int rowcnt = rs.getRow();
		rs.beforeFirst();	// 첫 레코드로 이동
		
		/* SELECT쿼리 결과 출력 : for문 */ 
		for(int i=0; i<rowcnt; i++) {
			rs.next();
			System.out.print(rs.getInt("bunho")+" | ");
			System.out.print(rs.getString("name")+" | ");
			System.out.print(rs.getString("phone")+" | ");
			System.out.print(rs.getInt("age"));
			System.out.println();
		}
		
		stmt.close();
		conn.close();
	}

}
