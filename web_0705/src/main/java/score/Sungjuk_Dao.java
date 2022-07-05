package score;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Sungjuk_Dao {
	
	public Connection conn;
	public PreparedStatement pstmt;
	
	public Sungjuk_Dao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/second";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public void insert(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		String sql = "insert into sungjuk";
		sql += "(name,kor,eng,mat) ";
		sql += "values(?,?,?,?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("name"));
		pstmt.setString(2, request.getParameter("kor"));
		pstmt.setString(3, request.getParameter("eng"));
		pstmt.setString(4, request.getParameter("mat"));
		
		pstmt.executeUpdate();
	}
	
	public ResultSet list() throws Exception {
		String sql = "select * from sungjuk";
		
		pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void delete(HttpServletRequest request) throws Exception {
		String sql = "delete from sungjuk where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("id"));
		
		pstmt.executeUpdate();
	}
	
	public ResultSet getValue(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		String sql = "select * from sungjuk where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("id"));
		
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void update(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		String sql = "update sungjuk set ";
		sql += "name=?, kor=?, eng=?, mat=? where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("name"));
		pstmt.setString(2, request.getParameter("kor"));
		pstmt.setString(3, request.getParameter("eng"));
		pstmt.setString(4, request.getParameter("mat"));
		pstmt.setString(5, request.getParameter("id"));
		
		pstmt.executeUpdate();
	}
	
	public ResultSet sort_sum() throws Exception {
		String sql = "select ";
		sql += "name, sum(kor+eng+mat) as sum ";
		sql += "from sungjuk ";
		sql += "group by name ";
		sql += "order by sum desc";
		
		pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void send(HttpServletResponse response, String location) throws Exception {
		response.sendRedirect(location);
	}
}
