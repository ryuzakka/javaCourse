package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDao {

	Connection conn;
	PreparedStatement pstmt;
	
	public BoardDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/second";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public void write(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		String sql = "insert into board";
		sql += "(title,name,pwd,content,writeday) ";
		sql += "values(?,?,?,?,now())";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("name"));
		pstmt.setString(3, request.getParameter("pwd"));
		pstmt.setString(4, request.getParameter("content"));
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("list.jsp");
	}
	
	public ResultSet list() throws Exception {
		String sql = "select * from board order by id desc";
		
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String sql = "update board set readnum = readnum+1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id=" + id);
	}
	
	public ResultSet content(int id) throws Exception {
		String sql = "select * from board where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	private boolean pwdcheck(String id, String pwd) throws Exception {
		String sql = "select count(*) from board where id=? and pwd=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next())
			return true;
		else
			return false;
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(pwdcheck(id, pwd)) {			
			String sql = "delete from board where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
			close();
			response.sendRedirect("list.jsp");
		} else {
			close();
			response.sendRedirect("content.jsp?id=" + id);
		}
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(pwdcheck(id, pwd)) {
			String sql = "update board set ";
			sql += "title=?, name=?, content=?, writeday=now() ";
			sql += "where id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("title"));
			pstmt.setString(2, request.getParameter("name"));
			pstmt.setString(3, request.getParameter("content"));
			pstmt.setString(4, id);
			pstmt.executeUpdate();
		}
		
		close();
		response.sendRedirect("content.jsp?id=" + id);
	}
	
}
