package board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDao {

	private Connection conn;
	private PreparedStatement pstmt;
	
	public BoardDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public void list(HttpServletRequest request) throws Exception {
		String sql = "select * from board1 limit 0,15";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		BoardDto dto;
		
		while(rs.next()) {
			dto = new BoardDto();
			dto.setId(rs.getInt("id"));
			dto.setName(rs.getString("name"));
			dto.setTitle(rs.getString("title"));
			dto.setContent(rs.getString("content"));
			dto.setPwd(rs.getString("pwd"));
			dto.setReadcnt(rs.getInt("readcnt"));
			dto.setWriteday(rs.getString("writeday"));
			list.add(dto);
		}
		
		request.setAttribute("list", list);
		rs.close();
		close();
	}
	
	public void readcnt(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String sql = "update board1 set readcnt = readcnt+1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id=" + id);
	}
	
	public void content(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		String sql = "select * from board1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		
		BoardDto dto = new BoardDto();
		dto.setId(rs.getInt("id"));
		dto.setTitle(rs.getString("title"));
		dto.setName(rs.getString("name"));
		dto.setContent(rs.getString("content").replace("\r\n","<br>"));
		dto.setReadcnt(rs.getInt("readcnt"));
		dto.setWriteday(rs.getString("writeday"));
		
		request.setAttribute("dto", dto);
		rs.close();
		close();
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String sql = "update board1 set ";
		sql += "title=?, name=?, content=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("name"));
		pstmt.setString(3, request.getParameter("content"));
		pstmt.setString(4, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id=" + id);
	}
	
	public boolean pwdcheck(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String sql = "select count(*) from board1 where id=? and pwd=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next())
			return true;
		else 
			return false;
	}
	
}
