<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="score.Sungjuk_Dao" %>
<%@ page import="java.sql.ResultSet" %>
<%
	Sungjuk_Dao dao = new Sungjuk_Dao();
	ResultSet rs = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	
	<table width="500" border="1">
		<caption>
			<h1>성적 관리</h1>
			<a href="write.jsp"><input type="button" value="학생 추가하기"></a>
			<a href="list_sort1.jsp">순위표</a>
		</caption>
		<tr>
			<td> 이 름 </td>
			<td> 국어점수 </td>
			<td> 영어점수 </td>
			<td> 수학점수 </td>
			<td> 합 계 </td>
			<td> 평 균 </td>
			<td> 수 정 </td>
			<td> 삭 제 </td>
		</tr>
	<% while(rs.next()) { %>
	<%
		int kor, eng, mat, sum=0;
		float avg = 0.0f;
		
		kor = rs.getInt("kor"); 
		eng = rs.getInt("eng");
		mat = rs.getInt("mat");
		sum = kor + eng + mat;
		//avg = sum / 3.00f;
		avg = Math.round((sum/3.00f)*100)/100.0f;
		//String avg1 = String.format("%.2f", avg);
	%>
		<tr>
			<td> <%=rs.getString("name") %> </td>
			<td> <%=kor %> </td>
			<td> <%=eng %> </td>
			<td> <%=mat %> </td>
			<td> <%=sum %> </td>
			<td> <%=avg %> </td>
			<td> <a href="update.jsp?id=<%=rs.getString("id")%>"><input type="button" value="수정"></a> </td>
			<td> <a href="delete.jsp?id=<%=rs.getString("id")%>"><input type="button" value="삭제"></a> </td>
		</tr>
	<% } %>
	</table>
	
</body>
</html>
<%
	dao.close();
%>