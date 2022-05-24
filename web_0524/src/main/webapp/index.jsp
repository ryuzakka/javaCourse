<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Grid : Table</title>
		<style>
			table {display:flex;}
			table tr {display:flex;}
			table tr td {display:flex;}
		</style>
	</head>
	<body>
		<table border="0" width="1150" align="center">
			<tr>	<!-- 1행 -->
				<td colspan="3" align="right"><img src="first_left.jpg"></td>
				<!-- <td></td> -->
				<!-- <td></td> -->
			</tr>
			<tr>	<!-- 2행 -->
				<td colspan="3"><img src="second.jpg"></td>
				<!-- <td></td> -->
				<!-- <td></td> -->
			</tr>
			<tr>	<!-- 3행 -->
				<td colspan="2"><img src="third_left.jpg"></td>
				<!-- <td></td> -->
				<td align="right"><img src="third_right.jpg"></td>
			</tr>
			<tr>	<!-- 4행 -->
				<td><img src="fourth_left.jpg"></td>
				<td colspan="2"><img src="fourth_right.jpg"></td>
				<!-- <td></td> -->
			</tr>
			<tr>	<!-- 5행 -->
				<td><img src="fifth_left.jpg"></td>
				<td colspan="2"><img src="fifth_right.jpg"></td>
				<!-- <td></td> -->
			</tr>
		</table>
	</body>
</html>