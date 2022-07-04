package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

public class Member_Dao {
	
	Connection conn;
	PreparedStatement pstmt;
	
	public Member_Dao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/second";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void insert(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		String sql = "insert into member(name, age) values(?,?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, age);
		
		pstmt.executeUpdate();
	}
	
	public ResultSet select() throws Exception {
		String sql = "select * from member order by id desc";
		pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public ResultSet select(String id) throws Exception {
		String sql = "select * from member ";
		sql += "where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void delete(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id"); 
		String sql = "delete from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.executeUpdate();
	}
	
	public void update(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		String sql = "update member set name=?, age=? where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, age);
		pstmt.setString(3, id);
		
		pstmt.executeUpdate();
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
}
