<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	// vote_view.jsp => 결과를 가져와서 알려준다.
	Class.forName("com.mysql.jdbc.Driver");
	String db = "jdbc:mysql://localhost:3306/board_test";
	Connection conn = DriverManager.getConnection(db, "root", "5032");
	
	String sql = "select *, p1+p2+p3+p4+p5 as total from vote where id=1";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	
	// 전체투표자수, 각 투표수
	int p1 = rs.getInt("p1");
	int p2 = rs.getInt("p2");
	int p3 = rs.getInt("p3");
	int p4 = rs.getInt("p4");
	int p5 = rs.getInt("p5");
	double total = (double)rs.getInt("total");
	
	// 투표율 X 총길이
	int leng = 800;
	int ratio1 = (int)((p1 / total) * leng);
	int ratio2 = (int)((p2 / total) * leng);
	int ratio3 = (int)((p3 / total) * leng);
	int ratio4 = (int)((p4 / total) * leng);
	int ratio5 = (int)((p5 / total) * leng);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vote_view</title>
<style>
	.lunch {
		display:inline-block;
		height:24px;
		background:greenyellow;
	}
</style>
</head>
<body>	<!-- 0629/vote_view.jsp -->

	<h2>좋아하는 점심메뉴 투표결과</h2>
	<table width="560" border="0">
		<tr>
			<!-- <td width="80"> 메뉴명 </td> -->
			<!-- <td> 그래프</td> -->
				<!-- 총 길이 : 400px -->
				<!-- 투표비율 => 투표수/전체투표수 -->
				<!-- 투표비율 x 총길이 -->
			<!-- <td width="80"> 투표수 </td> -->
		</tr>
		<tr>
			<td width="80"> 순대국밥 </td>
			<td> <span class="lunch" style="width:<%=ratio1%>px"></span> <%=p1%>명</td>
		</tr>
		<tr>
			<td> 부대찌개 </td>
			<td> <span class="lunch" style="width:<%=ratio2%>px"></span> <%=p2%>명</td>
		</tr>
		<tr>
			<td> 짜장면 </td>
			<td> <span class="lunch" style="width:<%=ratio3%>px"></span> <%=p3%>명</td>
		</tr>
		<tr>
			<td> 초 밥 </td>
			<td> <span class="lunch" style="width:<%=ratio4%>px"></span> <%=p4%>명</td>
		</tr>
		<tr>
			<td> 햄버거 </td>
			<td> <span class="lunch" style="width:<%=ratio5%>px"></span> <%=p5%>명</td>
		</tr>
	</table>
	<p>
	<a href="vote.jsp"><input type="button" value="투표하기"></a>
	
</body>
</html>