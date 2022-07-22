package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dto.TourDto;

public class TourDao {

	Connection conn;
	PreparedStatement pstmt;
	
	public TourDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	// MultipartRequest 객체 생성
	private MultipartRequest multipt(HttpServletRequest request, String path) throws Exception {
		int fsize = 10 * 1024 * 1024;
		String enc = "UTF-8";
		MultipartRequest multi = null;
		multi = new MultipartRequest(request, path, fsize, enc, new DefaultFileRenamePolicy());
		
		return multi;
	}
	
	public void write(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		String path = request.getRealPath("/tour/img");
		MultipartRequest multi = multipt(request, path);
		
		// Enumeration(Enum) 은 여러개의 파일을 업로드할 때 사용. 파일 이름을 가져온다
		Enumeration file = multi.getFileNames();	// 여러개의 파일을 업로드할 때 파일 이름을 가져온다.
		String fname = "";
		while(file.hasMoreElements()) {			
			// getFilesystemName 으로 접근할 수 있다는 의미
			fname += multi.getFilesystemName(file.nextElement().toString())+",";
		}
		//System.out.println("fname:"+fname);
		
		String sql = "insert into tour";
		sql += "(title, userid, content, fname, writeday) ";
		sql += "values(?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, multi.getParameter("title"));
		pstmt.setString(2, session.getAttribute("userid").toString());
		pstmt.setString(3, multi.getParameter("content"));
		pstmt.setString(4, fname);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("list.jsp");
	}
	
	public void list(HttpServletRequest request) throws Exception {
		
		String sql = "SELECT *,";
		sql += "substr(fname, 1, instr(fname, ',')-1) img,";
		sql += "length(fname)-length(replace(fname, ',', '')) cnt ";
		sql += "FROM tour ORDER BY id desc";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		ArrayList<TourDto> list = new ArrayList<TourDto>();
		
		while(rs.next()) {
			TourDto dto = new TourDto();
			dto.setId(rs.getInt("id"));
			dto.setTitle(rs.getString("title"));
			dto.setUserid(rs.getString("userid"));
			dto.setContent(rs.getString("content"));
			dto.setFname(rs.getString("fname"));
			dto.setReadnum(rs.getInt("readnum"));
			dto.setWriteday(rs.getString("writeday"));
			dto.setCnt(rs.getInt("cnt"));
			dto.setImg(rs.getString("img"));
			list.add(dto);
		}
		request.setAttribute("list", list);
		rs.close();
		close();
	}
	
	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String sql = "update tour set readnum = readnum+1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id="+id);
	}
	
	public void content(HttpServletRequest request, int type) throws Exception {
		
		String sql = "select * from tour where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("id"));
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			TourDto dto = new TourDto();
			dto.setId(rs.getInt("id"));
			dto.setTitle(rs.getString("title"));
			dto.setUserid(rs.getString("userid"));
			dto.setReadnum(rs.getInt("readnum"));
			dto.setWriteday(rs.getString("writeday"));
			
			if(type == 1)
				dto.setContent(rs.getString("content").replace("\r\n", "<br>"));
			else
				dto.setContent(rs.getString("content"));

			String[] file = rs.getString("fname").split(",");
			dto.setFile(file);
			
			request.setAttribute("content", dto);
		}
		rs.close();
		close();
	}
	
	
	
	
}
