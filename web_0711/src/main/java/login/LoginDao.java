package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginDao {

	Connection conn;
	PreparedStatement pstmt;
	
	// 생성자 => DB연결
	public LoginDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/board_test";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public void login_ok(HttpServletRequest request, HttpSession session, HttpServletResponse response) throws Exception {
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		String sql = "select * from member where userid=? and pwd=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, pwd);
		
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			// 회원인 경우, 세션변수에 값을 저장
			session.setAttribute("userid", userid);
			session.setAttribute("name", rs.getString("name"));
			
			response.sendRedirect("main.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}
	}
	
	public void logout(HttpSession session, HttpServletResponse response) throws Exception {
		session.invalidate();
		
		response.sendRedirect("main.jsp");
	}
	
}
