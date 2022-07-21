package dao;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
		
		String sql = "insert into tour";
		sql += "(title,userid,content,fname,writeday) ";
		sql += "values(?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql); 
		pstmt.setString(1, multi.getParameter("title")); 
		pstmt.setString(2, session.getAttribute("userid").toString()); 
		pstmt.setString(3, multi.getParameter("content")); 
		pstmt.setString(4, multi.getFilesystemName("fname")); 
		pstmt.executeUpdate();
		
		close(); 
		response.sendRedirect("list.jsp");
	}
	
	public void list(HttpServletRequest request) throws Exception {
		
		String sql = "select * from tour order by id desc";
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
		response.sendRedirect("content.jsp?id=" + id);
	}
	
	public void content(HttpServletRequest request, int type) throws Exception {
		String id = request.getParameter("id");
		String sql = "select * from tour where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			TourDto dto = new TourDto();
			dto.setId(rs.getInt("id"));
			dto.setTitle(rs.getString("title"));
			dto.setUserid(rs.getString("userid"));
			if(type == 1)
				dto.setContent(rs.getString("content").replace("\r\n","<br>"));
			else 
				dto.setContent(rs.getString("content"));
			dto.setFname(rs.getString("fname"));
			dto.setReadnum(rs.getInt("readnum"));
			dto.setWriteday(rs.getString("writeday"));
			
			request.setAttribute("content", dto);
		}
		
		rs.close();
		close();
		
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String path = request.getRealPath("/tour/img");
		String fname = request.getParameter("fname");
		
		System.out.println("path:"+path+" fname:"+fname);
		fileDelete(path, fname);
		
		String sql = "delete from tour where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("list.jsp");
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String path = request.getRealPath("/tour/img");
		MultipartRequest multi = multipt(request, path);
		String id = multi.getParameter("id");
		String sql = "update tour set ";
		
		if(multi.getFilesystemName("newfname") != null) {			
			fileDelete(path, multi.getParameter("oldfname"));
			
			sql += "title=?, content=?, fname=?, writeday=now() where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(3, multi.getFilesystemName("newfname"));
			pstmt.setString(4, id);
		} else {
			sql += "title=?, content=?, writeday=now() where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(3, id);			
		}
		pstmt.setString(1, multi.getParameter("title"));
		pstmt.setString(2, multi.getParameter("content"));
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id=" + id);
	}
	
	// 업로드 파일 삭제
	private void fileDelete(String path, String fname) {
		File file = new File(path+"/"+fname);
		if(file.exists()) {
			file.delete();
			System.out.println("file 삭제완료");
		} else
			System.out.println("file이 없음");
	}
	
	
	
	
	
	
	
}
