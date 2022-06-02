package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class DB_Delete {

	public static void main(String[] args) throws Exception {
		/* 테이블 안의 내용 중 특정 레코드를 삭제 */
		// delete from friend; => friend 테이블의 모든 레코드 삭제
		
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		
		/* 레코드 조회 */
		// Query
		String sql = "select * from member";
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// 쿼리 실행
		ResultSet rs = pstmt.executeQuery();
		// select쿼리 결과 출력(반복문)
		System.out.println("bunho | name | phone | age");
		while(rs.next()) {
			System.out.print(rs.getInt("bunho")+" | ");
			System.out.print(rs.getString("name")+" | ");
			System.out.print(rs.getString("phone")+" | ");
			System.out.println(rs.getInt("age"));
		}
		
		
		/* 삭제 */
		// Query
		sql = "delete from member where bunho=?";
		// 삭제할 레코드의 bunho값을 입력받기
		System.out.print("삭제할 번호를 입력하세요 : ");
		Scanner sc = new Scanner(System.in);
		int bunho = sc.nextInt();
		// 2번 심부름꾼
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bunho);
		// Query 실행
		pstmt.executeUpdate();
		
		
		/* 레코드 조회 */
		// Query
		sql = "select * from member";
		// 심부름꾼
		pstmt = conn.prepareStatement(sql);
		// 쿼리 실행
		rs = pstmt.executeQuery();
		// select쿼리 결과 출력(반복문)
		System.out.println();
		System.out.println("bunho | name | phone | age");
		while(rs.next()) {
			System.out.print(rs.getString("bunho")+" | ");	// 값을 가져와서 연산하지 않을 경우 String으로 가져와도 문제없음
			System.out.print(rs.getString("name")+" | ");
			System.out.print(rs.getString("phone")+" | ");
			System.out.println(rs.getString("age"));
		}
		
		// 연결종료
		sc.close();
		pstmt.close();
		conn.close();
		
	}

}
