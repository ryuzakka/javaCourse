package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.CommentDto;

public class CommentDao {

	Connection conn;
	PreparedStatement pstmt;
	
	public CommentDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/moneybook";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public void commentWrite(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String bid = request.getParameter("bid");
		String sql = "insert into lunch_comment";
		sql += "(userid,name,content,bid,writeday)";
		sql += "values(?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, session.getAttribute("userid").toString());
		pstmt.setString(2, session.getAttribute("name").toString());
		pstmt.setString(3, request.getParameter("content"));
		pstmt.setString(4, bid);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("../lunch/content.jsp?id="+bid);
	}
	
	public void commentList(HttpServletRequest request) throws Exception {
		String sql = "select * from lunch_comment where bid=? order by id desc";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("id"));
		ResultSet rs = pstmt.executeQuery();
		
		ArrayList<CommentDto> list = new ArrayList<CommentDto>();
		
		while(rs.next()) {
			CommentDto dto = new CommentDto();
			dto.setId(rs.getInt("id"));
			dto.setBid(rs.getInt("bid"));
			dto.setUserid(rs.getString("userid"));
			dto.setName(rs.getString("name"));
			dto.setContent(rs.getString("content"));
			dto.setWriteday(rs.getString("writeday"));
			//dto.setCnt(rs.getInt("cnt"));
			list.add(dto);
		}
		request.setAttribute("cmmt", list);
		
		rs.close();
		close();
	}
	
	public void commentCount(HttpServletRequest request) throws Exception {
		String sql = "select *, count(id) cnt from lunch_comment group by bid";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		ArrayList<CommentDto> list = new ArrayList<CommentDto>();
		
		while(rs.next()) {
			CommentDto dto = new CommentDto();
			dto.setId(rs.getInt("id"));
			dto.setBid(rs.getInt("bid"));
			dto.setCnt(rs.getInt("cnt"));
			list.add(dto);
		}
		request.setAttribute("cmmt", list);
		
		rs.close();
		close();
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String sql = "delete from lunch_comment where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("id"));
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("../lunch/content.jsp?id=" + request.getParameter("bid"));
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String sql = "update lunch_comment set ";
		sql += "content=?, writeday=now() where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("content"));
		pstmt.setString(2, request.getParameter("id"));
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("../lunch/content.jsp?id=" + request.getParameter("bid"));
	}
}
