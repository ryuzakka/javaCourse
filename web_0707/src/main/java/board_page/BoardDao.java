package board_page;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardDao {
	/*
	 * write_ok, list, content 등등 모든 자바 처리 부분을 여기에 메소드로 처리
	 * 모든 메소드가 DB 연결을 하므로 소스 중복을 하지 않게 생성자에서 연결을 처리한다.
	 */
	
	// 모든 메소드에서 사용할 수 있게 전역변수(멤버변수)로 선언
	Connection conn;
	PreparedStatement pstmt;
//	int page;
	
	// 생성자 => DB연결
	public BoardDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/first_test";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public void redirect(HttpServletResponse response, String location) throws Exception {
		response.sendRedirect(location);
	}
	public void redirect(HttpServletResponse response, String location, int id) throws Exception {
		response.sendRedirect(location + "?id=" + id);
	}
	
	// DB에 값 입력
	public void write(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String content = request.getParameter("content");
		
		String sql = "insert into board1";
		sql += "(title,name,content,pwd,writeday) ";
		sql += "values(?,?,?,?,now())";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setString(3, content);
		pstmt.setString(4, pwd);
		
		pstmt.executeUpdate();
	}
	
	public int getpage(HttpServletRequest request) throws Exception {
		int page;
		if(request.getParameter("page") == null)
			page = 1;
		else
			page = Integer.parseInt(request.getParameter("page"));
		
		return page;
	}
	
	public ResultSet list(HttpServletRequest request) throws Exception {
		int page = getpage(request);
		
		int index = (page-1) * 10;
		
		String sql = "select * from board1 order by id desc limit ?,10";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, index);
		
		ResultSet rs = pstmt.executeQuery();
		return rs;
	}
	
	public int pstart(HttpServletRequest request) throws Exception {
		int page = getpage(request);

		int tmp = page/10;
		if((page%10) == 0) {
			tmp--;
		}

		int pstart;
		pstart = (tmp*10) + 1;
		
		return pstart;
	}
	
//	public int pend() throws Exception {
//		int pend = pstart() + 9;
//		
//		if(pend > pagetotal())
//			return pagetotal();
//		else
//			return pend;
//	}
	
	public int pagetotal() throws Exception {
		String sql = "select ceil(count(*)/10) cnt from board1";
		
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next())
			return rs.getInt("cnt");
		else
			return 0;
	}
	
	public void read(HttpServletRequest request) throws Exception {
		String id = request.getParameter("id");
		
		String sql = "update board1 set readcnt = readcnt+1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		pstmt.execute();
	}
	
	public ResultSet content(int id) throws Exception {
		
		String sql = "select * from board1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int id = Integer.parseInt(request.getParameter("id"));
		String pwd = request.getParameter("pwd");
		
		if(pwdcheck(id,pwd)) {
			String sql = "delete from board1 where id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			
			pstmt.executeUpdate();
			
			close();
			response.sendRedirect("list.jsp");
		}
		else {
			close();
			response.sendRedirect("content.jsp?id=" + id);
		}
	}
	
	public void update(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(request.getParameter("id"));
		String pwd = request.getParameter("pwd");
		String title = request.getParameter("title");
		String name = request.getParameter("name");
		String content = request.getParameter("content");

		if(pwdcheck(id, pwd)) {			
			String sql = "update board1 set ";
			sql += "title=?, name=?, content=?, writeday=now() ";
			sql += "where id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, name);
			pstmt.setString(3, content);
			pstmt.setInt(4, id);
			
			pstmt.executeUpdate();
		}
	}
	
	public boolean pwdcheck(int id, String pwd) throws Exception {
		String sql = "select pwd from board1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		String dbpwd = rs.getString("pwd");
		
		if(!pwd.equals(dbpwd))	return false;
		else	return true;
	}
	
	public int pwdajax(String id, String pwd) throws Exception {
		String sql = "select pwd from board1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		String dbpwd = rs.getString("pwd");
		
		if(!pwd.equals(dbpwd)) {
			return 2;
		}
		else {
			return 1;
		}
	}
	
}
