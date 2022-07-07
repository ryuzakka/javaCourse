package board_page;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDao_Self {

	Connection conn;
	PreparedStatement pstmt;
	
	public BoardDao_Self() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public void write(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		String sql = "insert into board1";
		sql += "(title,name,content,pwd,writeday) ";
		sql += "values(?,?,?,?,now())";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("name"));
		pstmt.setString(3, request.getParameter("content"));
		pstmt.setString(4, request.getParameter("pwd"));
		
		pstmt.executeUpdate();
		
		response.sendRedirect("list.jsp");
	}
	
	public ResultSet list(HttpServletRequest request) throws Exception {
		int page, index;
		
		page = getPage(request);
		index = (page-1) * 10;
		
		// String sql = "select * from board1 order by id desc";
		String sql = "select * from board1 order by id desc limit ?,10";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, index);
		
		ResultSet rs = pstmt.executeQuery();
		return rs;
	}
	
	public int getPage(HttpServletRequest request) throws Exception {
		if(request.getParameter("page") == null)
			return 1;
		else 
			return Integer.parseInt(request.getParameter("page"));
	}
	
	public int getPageStart(HttpServletRequest request) throws Exception {
		int temp, page, pstart;
		page = getPage(request);
		
		temp = page / 10;
		if( (page%10) == 0 )
			temp--;
		
		pstart = (temp*10) + 1;
		
		return pstart;
	}
	
	public int getTotal() throws Exception {
		String sql = "select ceil(count(*)/10) cnt from board1";
		
		pstmt = conn.prepareStatement(sql);
		
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		
		return rs.getInt("cnt");
	}
	
	public void read(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		
		String sql = "update board1 set readcnt=readcnt+1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		response.sendRedirect("content.jsp?id=" + id);
	}
	
	public ResultSet content(int id) throws Exception {
		String sql = "select * from board1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		return rs;
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		if(pwdcheck(id, pwd)) {
			String sql = "delete from board1 where id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
		}
		close();
		response.sendRedirect("list.jsp");
	}
	
	public boolean pwdcheck(String id, String pwd) throws Exception {
		String sql = "select pwd from board1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		System.out.println(pwd + " " + rs.getString("pwd"));
		if(rs.getString("pwd").equals(pwd))
			return true;
		else 
			return false;
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String sql = "update board1 set ";
		sql += "title=?, name=?, content=?, writeday=now() where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("name"));
		pstmt.setString(3, request.getParameter("content"));
		pstmt.setString(4, id);
		
		pstmt.executeUpdate();
		
		response.sendRedirect("content.jsp?id=" + id);
	}
	
	

	
}
