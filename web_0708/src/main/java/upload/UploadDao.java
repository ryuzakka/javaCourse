package upload;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class UploadDao {

	Connection conn;
	PreparedStatement pstmt;
	
	// 생성자 => DB연결
	public UploadDao () throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/second";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	// DB연결 종료
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	// 업로드 파일 삭제
	private void fileDelete(String path, String fname) {
		File file = new File(path+"/"+fname);
		if(file.exists())
			file.delete();
	}
	
	// MultipartRequest 객체 생성
	private MultipartRequest multipt(HttpServletRequest request) throws Exception {
		String path = request.getRealPath("upload/img");
		int fsize = 5 * 1024 * 1024;
		String enc = "UTF-8";
		MultipartRequest multi = null;
		multi = new MultipartRequest(request, path, fsize, enc, new DefaultFileRenamePolicy());
		
		return multi;
	}
	
	
	// 글작성 => insert쿼리
	public void write(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MultipartRequest multi = multipt(request);
		String path = request.getRealPath("upload/img");
		
		String sql = "insert into upload";
		sql += "(title, name, content, fname, writeday) ";
		sql += "values(?,?,?,?,now())";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, multi.getParameter("title"));
		pstmt.setString(2, multi.getParameter("name"));
		pstmt.setString(3, multi.getParameter("content"));
		pstmt.setString(4, multi.getFilesystemName("fname"));
		
		pstmt.executeUpdate();
		
		close();
		
		response.sendRedirect("list.jsp");
	}
	
	// 글 목록 조회 => select쿼리(전체)
	public ResultSet list() throws Exception {
		String sql = "select * from upload order by id desc";
		
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	// 조회수 증가 => update쿼리(viewcnt++)
	public void count(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String sql = "update upload set viewcnt = viewcnt+1 where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		close();
		
		response.sendRedirect("view.jsp?id=" + id);
	}
	
	// 게시물 조회 => select쿼리(레코드 1개)
	public ResultSet view(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String sql = "select * from upload where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("id"));
		ResultSet rs = pstmt.executeQuery();
		
		return rs;
	}
	
	// 게시물 삭제 => delete쿼리(레코드 1개)
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String path = request.getRealPath("upload/img");
				
		String sql = "delete from upload where id=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		fileDelete(path, fname);
		
		close();
		response.sendRedirect("list.jsp");
	}

	
	// 게시글 수정 => update쿼리
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		MultipartRequest multi = multipt(request);
		String path = request.getRealPath("upload/img");
		
		String id = multi.getParameter("id");
		String title = multi.getParameter("title");
		String name = multi.getParameter("name");
		String content = multi.getParameter("content");
		String oldfname = multi.getParameter("fname");
		String newfname = multi.getFilesystemName("newfname");
		
		String sql = "";
		
		/* 업로드파일 유무 확인 */
		if(oldfname!=null && newfname!=null) {
			/* 기존파일 있고 and 신규파일 있는 경우 */
			
			// 기존파일 삭제 
			fileDelete(path, oldfname);
			
			// 신규파일 업로드
			sql = "update upload set ";
			sql += "title=?, name=?, content=?, writeday=now(), fname=? where id=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(4, newfname);
			pstmt.setString(5, id);
			
		}
		else if(oldfname==null && newfname!=null) {
			/* 기존파일 없고 and 신규파일 있는 경우 */

			// 신규파일 업로드
			sql = "update upload set ";
			sql += "title=?, name=?, content=?, writeday=now(), fname=? where id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(4, newfname);
			pstmt.setString(5, id);
			
		}
		else {
			/* fname을 업데이트할 필요가 없는 경우 */
			
			sql = "update upload set ";
			sql += "title=?, name=?, content=?, writeday=now() where id=?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(4, id);			
		}
		
		pstmt.setString(1, title);
		pstmt.setString(2, name);
		pstmt.setString(3, content);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("view.jsp?id="+id);	
	}
	
}
