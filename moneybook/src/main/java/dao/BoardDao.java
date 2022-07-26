package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.BoardDto;

public class BoardDao {

	Connection conn;
	PreparedStatement pstmt;
	
	public BoardDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/moneybook";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public void write(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		request.setCharacterEncoding("utf-8");
		String sql = "insert into board";
		sql += "(title, content, userid, name, writeday) ";
		sql += "values(?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("content"));
		pstmt.setString(3, session.getAttribute("userid").toString());
		pstmt.setString(4, session.getAttribute("name").toString());
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("list.jsp");
	}
	
	public void list(HttpServletRequest request) throws Exception {
		String sql = "select * from board ";
		sql += "order by id desc";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		
		while(rs.next()) {
			BoardDto dto = new BoardDto();
			dto.setId(rs.getInt("id"));
			dto.setTitle(rs.getString("title"));
			dto.setContent(rs.getString("content"));
			dto.setName(rs.getString("name"));
			dto.setReadnum(rs.getInt("readnum"));
			dto.setWriteday(rs.getString("writeday"));
			list.add(dto);
		}
		request.setAttribute("list", list);
		
		rs.close();
		close();
	}
	
	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		
		String sql = "update board set ";
		sql += "readnum = readnum+1 ";
		sql += "where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id="+id);
	}
	
	public void content(HttpServletRequest request, int type) throws Exception {
		
		String sql = "select * from board where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("id"));
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			BoardDto dto = new BoardDto();
			dto.setId(rs.getInt("id"));
			dto.setReadnum(rs.getInt("readnum"));
			dto.setTitle(rs.getString("title"));
			dto.setUserid(rs.getString("userid"));
			dto.setName(rs.getString("name"));
			dto.setWriteday(rs.getString("writeday"));
			if(type == 1)
				dto.setContent(rs.getString("content").replace("\r\n", "<br>"));
			else
				dto.setContent(rs.getString("content"));
			
			request.setAttribute("content", dto);
		}
		
		rs.close();
		close();
	}
	
	
	
	
	
	
}
