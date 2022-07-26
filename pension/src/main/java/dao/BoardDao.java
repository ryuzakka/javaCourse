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
import dto.GongjiDto;

public class BoardDao {
	
	private Connection conn;
	private PreparedStatement pstmt;
	
	public BoardDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	// 글쓰기 => write_ok.jsp
	public void write(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String userid;
		if(session.getAttribute("userid") != null)
			userid = session.getAttribute("userid").toString();
		else
			userid = "guest";
		
		String sql = "insert into board";
		sql += "(title, pwd, content, userid, writeday) ";
		sql += "values(?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("pwd"));
		pstmt.setString(3, request.getParameter("content"));
		pstmt.setString(4, userid);
		pstmt.executeUpdate();
		//System.out.println(pstmt.toString());
		
		response.sendRedirect("list.jsp");
	}
	
	// 글목록 => list.jsp
	public void list(HttpServletRequest request) throws Exception {
		
		String sql = "select * from board order by id desc";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		BoardDto dto;
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		
		while(rs.next()) {
			dto = new BoardDto();
			dto.setId(rs.getInt("id"));
			dto.setTitle(rs.getString("title"));
			dto.setPwd(rs.getString("pwd"));
			dto.setContent(rs.getString("content"));
			dto.setUserid(rs.getString("userid"));
			dto.setReadnum(rs.getInt("readnum"));
			dto.setWriteday(rs.getString("writeday"));
			list.add(dto);
		}
		
		rs.close();
		close();
		
		request.setAttribute("list", list);
	}
	
	// 조회수 증가 => readnum.jsp
	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String sql = "update board set readnum=readnum+1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id=" + id);
	}
	
	// 게시글 조회 => content.jsp, update.jsp
	public void content(HttpServletRequest request, int type) throws Exception {
		String id = request.getParameter("id");
		
		String sql = "select * from board where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		
		BoardDto dto = new BoardDto();
		dto.setId(rs.getInt("id"));
		dto.setTitle(rs.getString("title"));
		if(type == 1)	// type : 1=content에서 조회, 2=update에서 조회
			dto.setContent(rs.getString("content").replace("\r\n", "<br>"));
		else
			dto.setContent(rs.getString("content"));			
		dto.setUserid(rs.getString("userid"));
		dto.setReadnum(rs.getInt("readnum"));
		dto.setWriteday(rs.getString("writeday"));
		
		request.setAttribute("content", dto);
		
		rs.close();
		close();
	}
	
	// 비밀번호 검증
	public boolean pwdCheck(String id, String pwd) throws Exception {
		
		String sql = "select * from board where id=? and pwd=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			rs.close();
			return true;
		}
		else {
			rs.close();
			return false;
		}
	}
	
	// 게시글 삭제 => delete.jsp
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = null;
		if(request.getParameter("pwd") != null) {
			pwd = request.getParameter("pwd");
		}
		if(request.getParameter("pwd") == null || pwdCheck(id, pwd)) {
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
	
	// 게시글 수정 => update_ok.jsp
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = null;
		if(request.getParameter("pwd") != null)
			pwd = request.getParameter("pwd");
		if(request.getParameter("pwd") == null || pwdCheck(id,pwd)) {
			String sql = "update board set ";
			sql += "title=?, content=?, writeday=now() where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("title"));
			pstmt.setString(2, request.getParameter("content"));
			pstmt.setString(3, id);
			pstmt.executeUpdate();
			
			close();
			response.sendRedirect("content.jsp?id=" + id);
		} else {
			close();
			response.sendRedirect("update.jsp?chk=1&id=" + id);
		}
	}
	
	public void getRecent(HttpServletRequest request) throws Exception {
		String sql = "select * from board order by id desc limit 0,3";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		ArrayList<BoardDto> list = new ArrayList<BoardDto>();
		
		while(rs.next()) {
			BoardDto dto = new BoardDto();
			dto.setId(rs.getInt("id"));
			if(rs.getString("title").length() > 16)				
				dto.setTitle(rs.getString("title").substring(0, 14)+"···");
			else
				dto.setTitle(rs.getString("title"));
			dto.setContent(rs.getString("content"));
			dto.setUserid(rs.getString("userid"));
			dto.setReadnum(rs.getInt("readnum"));
			dto.setPwd(rs.getString("pwd"));
			dto.setWriteday(rs.getString("writeday"));
			list.add(dto);
		}
		request.setAttribute("blist", list);
	}
	
	

	
}
