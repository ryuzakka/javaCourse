package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoardDao {
	
	Connection conn;
	PreparedStatement pstmt;
	
	// 생성자 => DB연결
	public BoardDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/board_test";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public void checkSession(HttpSession session, HttpServletResponse response) throws Exception {
		if(session.getAttribute("userid") == null)
			response.sendRedirect("../login.jsp");
	}
	
	public ResultSet list() throws Exception {
		String sql = "select * from member_board order by id desc";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void write(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String userid = session.getAttribute("userid").toString();
		String name = session.getAttribute("name").toString();
		
		String sql = "insert into member_board";
		sql += "(title, name, content, userid, writeday) ";
		sql += "values(?,?,?,?,now())";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, name);
		pstmt.setString(3, request.getParameter("content"));
		pstmt.setString(4, userid);
		
		pstmt.executeUpdate();
		
		close();		
		response.sendRedirect("list.jsp");
	}
	
	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String sql = "update member_board set readnum=readnum+1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id=" + id);
	}
	
	public ResultSet content(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String sql = "select * from member_board where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		
		String sql = "delete from member_board where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("list.jsp");
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		
		String sql = "update member_board set title=?, content=?, writeday=now() where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("content"));
		pstmt.setString(3, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id=" + id);
	}
	
}
