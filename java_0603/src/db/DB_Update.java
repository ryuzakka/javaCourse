package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class DB_Update {
	
	public static void main(String[] args) throws Exception {
		// DELETE table_name SET field=value, field=value WHERE condition;
		
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		// 조회 쿼리
		String sql = "SELECT * FROM member";
		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// 쿼리 실행
		ResultSet rs = pstmt.executeQuery();
		// 결과 출력
		while(rs.next()) {
			System.out.print(rs.getString("bunho") + " | ");
			System.out.print(rs.getString("name") + " | ");
			System.out.print(rs.getString("phone") + " | ");
			System.out.println(rs.getString("age"));
		}
		
		// 수정 쿼리
		sql = "UPDATE member SET name=?, phone=?, age=? where bunho=?";
		// 심부름꾼
		Scanner sc = new Scanner(System.in);
		System.out.print("몇번 정보를 수정하시겠습니까?");
		int num = sc.nextInt();
		System.out.print("변경할 이름 : ");
		String name = sc.next();
		System.out.print("변경할 전화번호 : ");
		String phone = sc.next();
		System.out.print("변경할 나이 : ");
		int age = sc.nextInt();
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, phone);
		pstmt.setInt(3, age);
		pstmt.setInt(4, num);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		
		
		/* 결과 조회 */
		// 조회 쿼리
		sql = "SELECT * FROM member";
		// 심부름꾼
		pstmt = conn.prepareStatement(sql);
		// 쿼리 실행
		rs = pstmt.executeQuery();
		// 결과 출력
		while(rs.next()) {
			System.out.print(rs.getString("bunho") + " | ");
			System.out.print(rs.getString("name") + " | ");
			System.out.print(rs.getString("phone") + " | ");
			System.out.println(rs.getString("age"));
		}
		
		
		pstmt.close();
		conn.close();
		
	}

}
