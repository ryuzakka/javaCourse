<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%

	// 파일과 입력된 값을 받아서 값은 테이블에 저장, 파일은 특정 폴더에 저장 => upload/img 폴더 생성
	// String path = "C:\\2205java_utf8\\web_0623\\src\\main\\webapp\\upload\\img"; // 절대경로
	String path = request.getRealPath("upload/img/");	// 상대경로
	int fsize = 1024*1024*30;	// 30MB
	MultipartRequest multi = new MultipartRequest(request, path, fsize, "UTF-8", new DefaultFileRenamePolicy());
	// 생성자에 들어가는 인수 => request, 저장경로, 파일의 최대크기, 텍스트 인코딩, 중복방지객체
	
	// 파일은 업로드 완료 => 데이터베이스에 정보를 저장(제목, 내용, 이름, 파일이름)
	
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	// multi 객체에 request가 들어갔기 때문에 multi로 getParameter를 한다 (?!)
	String title = multi.getParameter("title");
	String name = multi.getParameter("name");
	String content = multi.getParameter("content");
	String fname = multi.getFilesystemName("fname");
		// multi.getFilesystemName(arg0);	// 시스템에 저장된 파일이름
		// multi.getOriginalFileName(arg0);	// 원본 파일이름
	
	String sql = "insert into upload(title,name,content, fname,writeday) ";
	sql += "values(?,?,?,?,now())";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, title);
	pstmt.setString(2, name);
	pstmt.setString(3, content);
	pstmt.setString(4, fname);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	conn.close();
	
	response.sendRedirect("list.jsp");
%>
