package comment;

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
		String db = "jdbc:mysql://localhost:3306/board_test";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public ResultSet list() throws Exception {
		String sql = "select * from board2 order by id desc";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void secretcheck(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		String sql = "select count(*) cnt from board2 where id=? and pwd=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {			
			response.sendRedirect("viewcnt.jsp?id=" + id);
			close();
		}
		else {			
			response.sendRedirect("list.jsp");
			close();
		}
	}
	
	public void updatePwdcheck(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		String sql = "select count(*) cnt from board2 where id=? and pwd=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, request.getParameter("pwd"));
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next())
			response.sendRedirect("update.jsp?id=" + id);
		else
			response.sendRedirect("view_twoforms.jsp?id=" + id);
	}
	
	public boolean deletePwdcheck(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		String sql = "select count(*) cnt from board2 where id=? and pwd=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, request.getParameter("pwd"));
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next())
			return true;
		else
			return false;
	}
	
	public void viewcnt(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		
		String sql = "update board2 set viewcnt = viewcnt+1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("view_twoforms.jsp?id=" + id);
	}
	
	public ResultSet content(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		
		String sql = "select * from board2 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String secret;
		if(request.getParameter("secret") == null)
			secret = "0";
		else
			secret = request.getParameter("secret");
		
		String sql = "update board2 set ";
		sql += "title=?, writer=?, content=?, ";
		sql += "area=?, secret=?, writeday=now() where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("writer"));
		pstmt.setString(3, request.getParameter("content"));
		pstmt.setString(4, request.getParameter("area"));
		pstmt.setString(5, request.getParameter("secret"));
		pstmt.setString(6, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("view_twoforms.jsp?id=" + id);
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		
		if(deletePwdcheck(request)) {			
			String sql = "delete from board2 where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
			sql = "delete from comment where bid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();

			close();
			response.sendRedirect("list.jsp");
		}
		else {
			close();
			response.sendRedirect("view_twoforms.jsp?id=" + id);
		}
		
	}
	
	public ResultSet commentList(String id) throws Exception {
		String sql = "select * from comment where bid=? order by id desc ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	
	public void commentUpdate(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		if(commentPwdcheck(request)) {
			String sql = "update comment set name=?, content=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("name"));
			pstmt.setString(2, request.getParameter("content"));
			pstmt.setString(3, request.getParameter("id"));
			pstmt.executeUpdate();
		}
		close();
		response.sendRedirect("view_twoforms.jsp?id=" + request.getParameter("bid"));		
	}
	
	public boolean commentPwdcheck(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		String sql = "select count(*) cnt from comment where id=? and pwd=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next())
			return true;
		else
			return false;
	}
	
	public void commentDelete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		if(commentPwdcheck(request)) {
			String sql = "delete from comment where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("id"));
			pstmt.executeUpdate();
		}
		
		close();
		response.sendRedirect("view_twoforms.jsp?id=" + request.getParameter("bid"));
	}
	
	public void commentWrite(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		String sql = "insert into comment";
		sql += "(name, content, pwd, bid, writeday) ";
		sql += "values(?,?,?,?,now())";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("name"));
		pstmt.setString(2, request.getParameter("content"));
		pstmt.setString(3, request.getParameter("pwd"));
		pstmt.setString(4, request.getParameter("bid"));
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("view_twoforms.jsp?id=" + request.getParameter("bid"));
	}
	
	
}
