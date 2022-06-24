<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.io.File" %>
<%
	String path = request.getRealPath("upload/img/");	// 상대경로
	int fsize = 1024*1024*30;	// 30MB
	MultipartRequest multi = new MultipartRequest(request, path, fsize, "UTF-8", new DefaultFileRenamePolicy());
	// 생성자에 들어가는 인수 => request, 저장경로, 파일의 최대크기, 텍스트 인코딩, 중복방지객체
	
	// 파일은 업로드 완료 => 데이터베이스에 정보를 저장(제목, 내용, 이름, 파일이름)
	
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String id = multi.getParameter("id");
	String title = multi.getParameter("title");
	String name = multi.getParameter("name");
	String content = multi.getParameter("content");
	String fname = multi.getFilesystemName("fname");
	String fname2 = multi.getParameter("fname2");	// 기존의 이미지파일명
	
	PreparedStatement pstmt;
	if(fname == null) {	// 기존 이미지를 그대로 사용
		String sql = "update upload set title=?, name=?, content=? where id=?";
		pstmt = conn.prepareStatement(sql);		
		pstmt.setString(4, id);	
	}
	else {	// 기존 이미지를 바꾸겠다.		
		String sql = "update upload set title=?, name=?, content=?, fname=? where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(4, fname);
		pstmt.setString(5, id);
		
		// 기존 이미지 파일 삭제하기
		File file = new File(path + "/" + fname2);
		if(file.exists()) {
			file.delete();
		}
	}
	
	pstmt.setString(1, title);
	pstmt.setString(2, name);
	pstmt.setString(3, content);
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("view.jsp?id=" + id);
%>