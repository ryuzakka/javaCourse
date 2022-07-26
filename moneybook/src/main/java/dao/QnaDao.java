package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.QnaDto;

public class QnaDao {

	Connection conn;
	PreparedStatement pstmt;
	
	public QnaDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/moneybook";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public void write(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		String sql = "select ifnull(max(grp),0) as grp from qna";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		int grp = rs.getInt("grp") + 1;
		
		sql = "insert into qna";
		sql += "(title, content, pwd, name, writeday, grp, depth, seq) ";
		sql += "values(?,?,?,'guest',now(),?,1,1)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("content"));
		pstmt.setString(3, request.getParameter("pwd"));
		pstmt.setInt(4, grp);
		pstmt.executeUpdate();
		
		rs.close();
		close();
		response.sendRedirect("list.jsp");
	}
	
	public void list(HttpServletRequest request) throws Exception {
		String sql = "select * from qna order by grp desc, seq asc";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		ArrayList<QnaDto> list = new ArrayList<QnaDto>();
		
		while(rs.next()) {
			QnaDto dto = new QnaDto();
			dto.setId(rs.getInt("id"));
			dto.setName(rs.getString("name"));
			dto.setTitle(rs.getString("title"));
			dto.setReadnum(rs.getInt("readnum"));
			dto.setWriteday(rs.getString("writeday"));
			dto.setGrp(rs.getInt("grp"));
			dto.setDepth(rs.getInt("depth"));
			dto.setSeq(rs.getInt("seq"));
			list.add(dto);
		}
		request.setAttribute("list", list);
		
		rs.close();
		close();
	}
	
	public void readnum(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String sql = "update qna set readnum = readnum+1 where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		close();
		response.sendRedirect("content.jsp?id="+id);
	}
	
	public void content(HttpServletRequest request, int type) throws Exception {
		String id = request.getParameter("id");
		String sql = "select * from qna where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			QnaDto dto = new QnaDto();
			dto.setId(rs.getInt("id"));
			dto.setTitle(rs.getString("title"));
			if(type == 1)
				dto.setContent(rs.getString("content").replace("\r\n", "<br>"));
			else
				dto.setContent(rs.getString("content"));
			dto.setName(rs.getString("name"));
			dto.setPwd(rs.getString("pwd"));
			dto.setReadnum(rs.getInt("readnum"));
			dto.setWriteday(rs.getString("writeday"));
			dto.setGrp(rs.getInt("grp"));
			dto.setDepth(rs.getInt("depth"));
			dto.setSeq(rs.getInt("seq"));

			request.setAttribute("content", dto);
		}
		rs.close();
		close();
	}
	
	public void getAnswer() throws Exception {
		
	}
	
	public boolean pwdCheck(String id, String pwd) throws Exception {
		String sql = "select * from qna where id=? and pwd=?";
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
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		if(pwdCheck(id, pwd)) {
			// grp : 그대로
			int grp = Integer.parseInt(request.getParameter("grp"));
			// seq : -1
			int seq = Integer.parseInt(request.getParameter("seq"));
			
			String sql = "select seq from qna where seq>? and grp=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			pstmt.setInt(2, grp);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				sql = "update qna set seq=seq-1 where seq>? and grp=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, seq);
				pstmt.setInt(2, grp);
				pstmt.executeUpdate();
			}
			sql = "delete from qna where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
			close();
			response.sendRedirect("list.jsp");
		} else {			
			close();
			response.sendRedirect("content.jsp?id="+id);
		}
	}
	
	public void update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(pwdCheck(id, pwd)) {
			String sql = "update qna set ";
			sql += "title=?, content=?, writeday=now() where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("title"));
			pstmt.setString(2, request.getParameter("content"));
			pstmt.setString(3, id);
			pstmt.executeUpdate();
			
			close();
			response.sendRedirect("content.jsp?id="+id);
		} else {			
			close();
			response.sendRedirect("update.jsp?chk=1&id="+id);
		}
	}
	
	public void update_admin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String sql = "update qna set ";
		sql += "title=?, content=?, writeday=now() where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, request.getParameter("content"));
		pstmt.setString(3, id);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("content.jsp?id="+id);
	}
	
	public void rewrite_form(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int id = Integer.parseInt(request.getParameter("id"));
		int grp = Integer.parseInt(request.getParameter("grp"));
		int depth = Integer.parseInt(request.getParameter("depth"));
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		QnaDto dto = new QnaDto();
		dto.setId(id);
		dto.setTitle(request.getParameter("title"));
		dto.setGrp(grp);
		dto.setDepth(depth);
		dto.setSeq(seq);
		
		request.setAttribute("reply", dto);
	}
	
	public void rewrite(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		
		// grp : 그대로
		int grp = Integer.parseInt(request.getParameter("grp"));
		// depth : +1
		int depth = Integer.parseInt(request.getParameter("depth")) +1;
		// seq : +1
		int seq = Integer.parseInt(request.getParameter("seq")) +1;
		
		// 지금 들어오는 글의 seq보다 큰 글은 seq를 1씩 증가시킨다.
		String sql = "update qna set seq=seq+1 where seq>=? and grp=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, seq);
		pstmt.setInt(2, grp);
		pstmt.executeUpdate();
		
		sql = "insert into qna";
		sql += "(title, name, content, writeday, grp, depth, seq) ";
		sql += "values(?,?,?,now(),?,?,?)";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("title"));
		pstmt.setString(2, "관리자");
		pstmt.setString(3, request.getParameter("content"));
		pstmt.setInt(4, grp);
		pstmt.setInt(5, depth);
		pstmt.setInt(6, seq);
		pstmt.executeUpdate();
		
		close();
		response.sendRedirect("list.jsp");
		
	}
	
}
