package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import dto.ReserveDto;

public class ReserveDao {

	Connection conn;
	PreparedStatement pstmt;
	
	public ReserveDao() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		String db = "jdbc:mysql://localhost:3306/pension";
		conn = DriverManager.getConnection(db, "root", "5032");
	}
	
	public void close() throws Exception {
		pstmt.close();
		conn.close();
	}
	
	public void getCalendar(HttpServletRequest request) {
		/* 달력 => 1일의 요일, 총일수, 주수.. 를 구해서 request 영역에 저장 */
		
		// 매개변수 처리
		int yy,mm;
		if(request.getParameter("y") == null) {
			// 오늘 날짜 정보 가져오기
			LocalDate today = LocalDate.now();
			yy = today.getYear();
			mm = today.getMonthValue();	// 1-12
		} else {
			// 매개변수 값 저장
			yy = Integer.parseInt(request.getParameter("y"));
			mm = Integer.parseInt(request.getParameter("m"));
		}
		
		
		// 해당월의 1일에 대한 날짜객체 생성
		LocalDate thisMonth = LocalDate.of(yy, mm, 1);
		
		// 1일의 요일
		int yoil = thisMonth.getDayOfWeek().getValue();	// 1-7
		if(yoil == 7)	 yoil = 0; // 월-일 => 일-토 변경
		
		// 해당월의 총일수
		int total = thisMonth.lengthOfMonth();
		
		// 주수 계산 (몇 주인가)
		int howManyWeeks = (int)Math.ceil((yoil+total)/7.0);
		
		request.setAttribute("yoil", yoil);
		request.setAttribute("total", total);
		request.setAttribute("weeks", howManyWeeks);
		request.setAttribute("month", mm);
		request.setAttribute("year", yy);
	}
	
	
	public void getRoom(HttpServletRequest request) throws Exception {
		
		String sql = "select * from room where state=0 order by price asc";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		ArrayList<ReserveDto> list = new ArrayList<ReserveDto>();
		
		while(rs.next()) {
			ReserveDto dto = new ReserveDto();
			dto.setId(rs.getInt("id"));
			dto.setBang(rs.getString("bang"));
			dto.setPrice(rs.getInt("price"));
			dto.setState(rs.getInt("state"));
			dto.setMax(rs.getInt("max"));
			dto.setMin(rs.getInt("min"));
			list.add(dto);
		}
		request.setAttribute("list", list);
		rs.close();
		close();
	}
	
	
	public void reserve_next(HttpServletRequest request) throws Exception {
		// JSP에 보내줄 내용 => 년, 월, 일, 방의 정보
		int year,month,day;
		year = Integer.parseInt(request.getParameter("y"));
		month = Integer.parseInt(request.getParameter("m"));
		day = Integer.parseInt(request.getParameter("d"));
		String id = request.getParameter("bid");
		
		// 입실일
		String checkIn = year +"-"+ month +"-"+ day;
		
		// 방의 정보
		String sql = "select * from room where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			ReserveDto dto = new ReserveDto();
			dto.setId(rs.getInt("id"));
			dto.setBang(rs.getString("bang"));
			dto.setContent(rs.getString("content"));
			dto.setMin(rs.getInt("min"));
			dto.setMax(rs.getInt("max"));
			dto.setPrice(rs.getInt("price"));
			dto.setState(rs.getInt("state"));
			request.setAttribute("room", dto);
			request.setAttribute("checkIn", checkIn);
		}
		rs.close();
		close();
	}
	
	
	
	
	
	
	
	
}
