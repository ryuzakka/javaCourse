package dao;

import java.io.File;
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

import dto.BoardDto;
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
			dto.setFname(rs.getString("fname"));
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
	
	public void update_old(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String path = request.getRealPath("/tour/img");
		MultipartRequest multi = multipt(request, path);
		
		String id = multi.getParameter("id");
		// Enumeration(Enum) 은 여러개의 파일을 업로드할 때 사용. 파일 이름을 가져온다
		Enumeration file = multi.getFileNames();	// 여러개의 파일을 업로드할 때 파일 이름을 가져온다.
		String fname = request.getParameter("oldfname");
		while(file.hasMoreElements()) {			
			// getFilesystemName 으로 접근할 수 있다는 의미
			fname += multi.getFilesystemName(file.nextElement().toString())+",";
		}
		//System.out.println("fname:"+fname);
		
		String sql = "insert into tour";
		sql += "(title, content, fname, writeday) ";
		sql += "values(?,?,?,?,now())";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, multi.getParameter("title"));
		pstmt.setString(2, multi.getParameter("content"));
		pstmt.setString(3, fname);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id="+id);
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// mpr 객체 생성
		String path = request.getRealPath("/tour/img");
		MultipartRequest multi = multipt(request, path);
		
		// 삭제할 파일 목록을 통해 파일을 삭제
		String[] deleteFiles = multi.getParameter("delfname").split(",");
		
		for(int i=0; i<deleteFiles.length; i++) {
			File file = new File(path+"/"+deleteFiles[i]);
			if(file.exists())
				file.delete();
		}
		
		/* 최종 파일 = 계속 보관할 파일 + 추가 업로드 하는 파일 */
		
		// 계속 보관할 파일
		String saveFiles = multi.getParameter("stayfname");
		
		// 추가 업로드하는 파일
		Enumeration upfile = multi.getFileNames();
		String uploadFiles = "";
		while(upfile.hasMoreElements()) {
			uploadFiles += multi.getFilesystemName(upfile.nextElement().toString()) + ",";
		}
		
		// null값 지우기
		uploadFiles = uploadFiles.replace("null,", "");
		
		// 최종 파일로 합치기
		String finalFiles = uploadFiles + saveFiles;
		String id = multi.getParameter("id");
		String sql = "update tour set ";
		sql += "title=?, content=?, fname=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, multi.getParameter("title"));
		pstmt.setString(2, multi.getParameter("content"));
		pstmt.setString(3, finalFiles);
		pstmt.setString(4, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id="+id);
	}
	
	public void getRecent(HttpServletRequest request) throws Exception {
		String sql = "select * from tour order by id desc limit 0,3";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		ArrayList<TourDto> list = new ArrayList<TourDto>();
		
		while(rs.next()) {
			TourDto dto = new TourDto();
			dto.setId(rs.getInt("id"));
			if(rs.getString("title").length() > 16)				
				dto.setTitle(rs.getString("title").substring(0, 14)+"···");
			else
				dto.setTitle(rs.getString("title"));
			dto.setContent(rs.getString("content"));
			dto.setUserid(rs.getString("userid"));
			dto.setReadnum(rs.getInt("readnum"));
			dto.setFname(rs.getString("fname"));
			dto.setWriteday(rs.getString("writeday"));
			list.add(dto);
		}
		request.setAttribute("tlist", list);
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// 삭제할 파일 목록을 통해 파일을 삭제
		String[] deleteFiles = request.getParameter("fname").split(",");
		String path = request.getRealPath("/tour/img");
		for(int i=0; i<deleteFiles.length; i++) {
			File file = new File(path+"/"+deleteFiles[i]);
			if(file.exists())
				file.delete();
		}
		
		String id = request.getParameter("id");
		String sql = "delete from tour where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("list.jsp");
	}
	
	
	
}
