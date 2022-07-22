package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.GongjiDto;

public class GongjiDao {

	Connection conn;
	PreparedStatement pstmt;
	
	public GongjiDao() throws Exception {
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
		String gubun;
		if(request.getParameter("gubun") == null)
			gubun = "0";
		else
			gubun = request.getParameter("gubun");
		
		String sql = "insert into gongji";
		sql += "(title, content, gubun, writeday) ";
		sql += "values(?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("content"));
		pstmt.setString(3, gubun);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("list.jsp");
	}
	
	public void list(HttpServletRequest request) throws Exception {
		
		String sql = "select * from gongji order by gubun desc, id desc";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		ArrayList<GongjiDto> list = new ArrayList<GongjiDto>();
		
		while(rs.next()) {
			GongjiDto dto = new GongjiDto();
			dto.setId(rs.getInt("id"));
			dto.setGubun(rs.getInt("gubun"));
			dto.setTitle(rs.getString("title"));
			dto.setContent(rs.getString("content"));
			dto.setWriteday(rs.getString("writeday"));
			list.add(dto);
		}
		
		request.setAttribute("list", list);
		
		rs.close();
		close();
	}
	
	public void content(HttpServletRequest request, int type) throws Exception {
		
		String id = request.getParameter("id"); 
		String sql = "select * from gongji where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			GongjiDto dto = new GongjiDto();
			dto.setId(rs.getInt("id"));
			dto.setTitle(rs.getString("title"));
			dto.setGubun(rs.getInt("gubun"));
			if(type == 1)
				dto.setContent(rs.getString("content").replace("\r\n", "<br>"));
			else
				dto.setContent(rs.getString("content"));
			dto.setWriteday(rs.getString("writeday"));
			
			request.setAttribute("article", dto);
		}
		
		rs.close();
		close();
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String sql = "delete from gongji where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("list.jsp");
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String gubun;
		if(request.getParameter("gubun") == null)
			gubun = "0";
		else
			gubun = request.getParameter("gubun");
		
		String sql = "update gongji set ";
		sql += "title=?, content=?, gubun=?, writeday=now() where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("content"));
		pstmt.setString(3, gubun);
		pstmt.setString(4, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id=" + id);
	}
	
	public void notice(HttpServletRequest request) throws Exception {
		
		String sql = "select * from gongji where gubun=1 order by id desc";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		ArrayList<GongjiDto> list = new ArrayList<GongjiDto>();
		
		while(rs.next()) {
			GongjiDto dto = new GongjiDto();
			dto.setId(rs.getInt("id"));
			dto.setGubun(rs.getInt("gubun"));
			dto.setTitle(rs.getString("title"));
			dto.setContent(rs.getString("content"));
			dto.setWriteday(rs.getString("writeday"));
			list.add(dto);
		}
		
		request.setAttribute("notice", list);
		
		rs.close();
		close();
	}
	
}
