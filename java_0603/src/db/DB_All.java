package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class DB_All {

	public void insert() throws Exception {
		/* DB 연결 */
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		/* 데이터 입력 : Scanner로 입력받기 */
		Scanner sc = new Scanner(System.in);
		System.out.println("번호:");
		int memid = sc.nextInt();
		System.out.println("이름:");
		String memname = sc.next();
		System.out.println("전화번호:");
		String memphone = sc.next();
		System.out.println("나이:");
		int memage = sc.nextInt();
		
		/* 쿼리 실행 */
		String sql = "INSERT INTO member(bunho,name,phone,age) VALUES(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, memid);
		pstmt.setString(2, memname);
		pstmt.setString(3, memphone);
		pstmt.setInt(4, memage);
		pstmt.executeUpdate();
	}
	
	public void select() throws Exception {
		/* DB 연결 */
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
		System.out.println("번호 | 이 름 |   연  락  처   | 나이");
		while(rs.next()) {
			System.out.print(rs.getString("bunho") + " | ");
			System.out.print(rs.getString("name") + " | ");
			System.out.print(rs.getString("phone") + " | ");
			System.out.println(rs.getString("age"));
		}
		System.out.println();
	}
	
	public void delete() throws Exception {
		/* DB 연결 */
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		// Query
		String sql = "delete from member where bunho=?";
		// 삭제할 레코드의 bunho값을 입력받기
		System.out.println("삭제할 번호를 입력하세요 : ");
		Scanner sc = new Scanner(System.in);
		int bunho = sc.nextInt();
		// 2번 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, bunho);
		// Query 실행
		pstmt.executeUpdate();
	}
	
	public void update() throws Exception {
		/* DB 연결 */
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		// 수정 쿼리
		String sql = "UPDATE member SET name=?, phone=?, age=? where bunho=?";

		// 심부름꾼
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		Scanner sc = new Scanner(System.in);
		System.out.println("몇번 정보를 수정하시겠습니까?");
		int num = sc.nextInt();
		System.out.println("변경할 이름 : ");
		String name = sc.next();
		System.out.println("변경할 전화번호 : ");
		String phone = sc.next();
		System.out.println("변경할 나이 : ");
		int age = sc.nextInt();
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, phone);
		pstmt.setInt(3, age);
		pstmt.setInt(4, num);
		
		// 쿼리 실행
		pstmt.executeUpdate();
	}
	
	public void controlA() throws Exception {
		Scanner sc = new Scanner(System.in);
		int m = 0;

		do {
			switch(m) {
				case 1: select(); break;
				case 2: insert(); break;
				case 3: update(); break;
				case 4: delete(); break;
			}
			System.out.println();
			System.out.println("*** DATABASE ***");
			System.out.println("1.조회 2.입력 3.수정 4.삭제 | 5.프로그램 종료");
		} 
		while((m = sc.nextInt()) != 5);
	}
	
	public void controlB() throws Exception {
		Scanner sc = new Scanner(System.in);
		int n;
		
		while(true) {
			System.out.println("*** DATABASE ***");
			System.out.println("1.조회 2.입력 3.수정 4.삭제 | 0.프로그램 종료");
			
			n = sc.nextInt();
			
			if(n == 0) {
				System.out.println("프로그램이 종료됩니다.");
				break;
			}
			else if(n == 1)
				select();
			else if(n == 2) {
				insert();
				select();				
			}
			else if(n == 3) {
				update();
				select();
			}
			else if(n == 4) {
				delete();
				select();				
			}
			else
				System.out.println("잘못 입력하셨습니다.");
		}
	}
	
}
