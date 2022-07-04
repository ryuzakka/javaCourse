package web_0704;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DB_Access {
	
	public Connection conn;
	PreparedStatement pstmt;
	
	public DB_Access() throws Exception  {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/second";
		conn = DriverManager.getConnection(db, "root", "5032");
		// 다른 메소드에서 접근하고자 하는 속성 => 전역변수
	}
	
	public void table_create() throws Exception {
		
		String sql = "create table test2(name char(10), age int)";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
	}
	
	public void insert(String name, int age) throws Exception {
		
		String sql = "insert into test(name, age) values(?,?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setInt(2, age);
		pstmt.executeUpdate();
		
		pstmt.close();
		conn.close();
		
	}
	
	public ResultSet select(String table) throws Exception {
		
		String sql = "select * from " + table;
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
		
	}
	
}
