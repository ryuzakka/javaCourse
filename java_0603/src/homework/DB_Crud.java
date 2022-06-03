package homework;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;


public class DB_Crud {
	
	public void select() throws Exception {
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		// 쿼리 작성
		String sql = "SELECT * FROM book";
		
		// 심부름꾼 세팅
		PreparedStatement pstmt = conn.prepareStatement(sql);
		// 쿼리 실행
		ResultSet rs = pstmt.executeQuery();
		
		System.out.println("번호 | 제목 | 지은이 | 가격 | 저작일");
		while(rs.next()) {
			System.out.print(rs.getInt("id") + " | ");
			System.out.print(rs.getString("title") + " | ");
			System.out.print(rs.getString("name") + " | ");
			System.out.print(rs.getString("price") + " | ");
			System.out.println(rs.getString("writeday") + " | ");
		}
		System.out.println();
		
	}
	
	public void insert() throws Exception {
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		// 쿼리 작성
		String sql = "INSERT INTO book(title,name,price,writeday) VALUES(?,?,?,?)";
		
		// 심부름꾼 세팅
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		Scanner sc = new Scanner(System.in);
		System.out.println("책 제목 : ");
		String title = sc.nextLine();
		System.out.println("지은이 : ");
		String name = sc.next();
		System.out.println("책 가격 : ");
		int price = sc.nextInt();
		System.out.println("저작일(YYYY-MM-DD) : ");
		String writeDay = sc.next();
		
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setInt(3, price);
		pstmt.setString(4, writeDay);
						
		// 쿼리 실행
		pstmt.executeUpdate();
		
	}
	
	public void update() throws Exception {
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		// 쿼리 작성
		String sql = "UPDATE book SET title=?, name=?, price=?, writeday=? WHERE id=?";
		
		// 심부름꾼 세팅
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		Scanner sc = new Scanner(System.in);
		System.out.println("수정할 번호를 입력하세요 : ");
		int id = sc.nextInt();
		System.out.println("수정할 책 제목 : ");
		sc.nextLine();
		String title = sc.nextLine();
		System.out.println("수정할 지은이 : ");
		String name = sc.next();
		System.out.println("수정할 책 가격 : ");
		int price = sc.nextInt();
		System.out.println("수정할 저작일(YYYY-MM-DD) : ");
		String writeDay = sc.next();
		
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setInt(3, price);
		pstmt.setString(4, writeDay);
		pstmt.setInt(5, id);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		
	}
	
	public void delete() throws Exception {
		// DB연결
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		Connection conn = DriverManager.getConnection(db, "root", "5032");
		
		// 쿼리 작성
		String sql = "DELETE FROM book WHERE id=?";
		
		// 심부름꾼 세팅
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		Scanner sc = new Scanner(System.in);
		System.out.println("몇 번째 데이터를 삭제할까요?");
		int id = sc.nextInt();
		
		pstmt.setInt(1, id);
		
		// 쿼리 실행
		pstmt.executeUpdate();
		
	}
	
	public void crud() throws Exception {
		Scanner sc = new Scanner(System.in);
		while(true) {
			
			System.out.println("*** 도서 정보 시스템 ***");
			System.out.println("1.조회 2.추가 3.수정 4.삭제 0.종료");
			int n = sc.nextInt();
			
			if(n == 0) {
				System.out.println("프로그램을 종료합니다.");
				break;
			} else if(n == 1) {
				select();
			} else if(n == 2) {
				insert();
				select();
			} else if(n == 3) {
				update();
				select();
			} else if(n == 4) {
				delete();
				select();
			} else {
				System.out.println("잘못 입력하셨습니다.");
			}
		}
	}

}
