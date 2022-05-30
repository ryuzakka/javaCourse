package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Scanner;

public class DB_Insert {

	public static void main(String[] args) throws Exception {
		
		/* DB 연결 */
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		String dbid = "root";
		String dbpw = "5032";
		Connection conn = DriverManager.getConnection(db, dbid, dbpw);
		
		/* 데이터 입력 : Scanner로 입력받기 */
		Scanner sc = new Scanner(System.in);
		String username = sc.next();
		sc.nextLine();
		String useraddr = sc.nextLine();
		int userage = sc.nextInt();
		
		/* 쿼리 작성 */
//		String sql = "INSERT INTO friend(name, address, age) VALUES('"+username+"','"+useraddr+"',"+userage+")";
		
		/* 1번째 심부름꾼 */
//		Statement stmt = conn.createStatement();
//		stmt.executeUpdate(sql);
//		stmt.close();	// connection 종료
				
		/* 2번째 심부름꾼 */
		String sql = "INSERT INTO friend(name,address,age) VALUES(?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, username);
		pstmt.setString(2, useraddr);
		pstmt.setInt(3, userage);
		pstmt.executeUpdate();
		
		/* connection 종료 */
		conn.close();
		
	}

}
