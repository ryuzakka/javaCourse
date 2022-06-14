<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board2/test</title>
<style>
	#aa { visibility:hidden; }
	input[type=radio] {
		display:none;
	}
	.bb {
		display:inline-block;
		width:60px;
		height:28px;
		border:1px solid hotpink;
		text-align:center;
	}
</style>
<script>
	function view() {
		document.getElementById("aa").style.visibility = "visible"; 
	}
	function check(n) {
		document.dhr.sung[n].checked = true;
		if(n == 0) {
			document.getElementsByClassName("bb")[0].style.background = "pink";
			document.getElementsByClassName("bb")[0].style.color = "white";
			document.getElementsByClassName("bb")[1].style.background = "white";
			document.getElementsByClassName("bb")[1].style.color = "black";
		} else {
			document.getElementsByClassName("bb")[1].style.background = "pink";
			document.getElementsByClassName("bb")[1].style.color = "white";
			document.getElementsByClassName("bb")[0].style.background = "white";
			document.getElementsByClassName("bb")[0].style.color = "black";
		}
	}
</script>
</head>
<body>
	<td> <span onclick="view()">오늘은 월요일입니다.</span> </td>	<!-- 클릭하면 비밀번호 입력창이 보이게 -->
	<form id="aa">
		비번 <input type="password" name="pwd">
	</form>
	
	<form name="dhr" method="get" action="aa.jsp">
		<input type="radio" name="sung" value="0"> <span class="bb" onclick="check(0)">남자</span>
		<input type="radio" name="sung" value="1"> <span class="bb" onclick="check(1)">여자</span>
		<input type="submit" value="submit">
	</form>
</body>
</html>