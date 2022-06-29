<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vote</title>
<script>
	function check() {
		var chk = 0;
		for(i=0; i<5; i++) {			
			if(document.dhr.lunch[i].checked)
				chk = 1;
		}
		if(chk == 1)
			return true;
		else {				
			alert("투표를 진행해주세요.");
			return false;
		}
	}
</script>
</head>
<body>	<!-- 0629/vote.jsp -->
	
	<form name="dhr" method="post" action="vote_ok.jsp" onsubmit="return check()">
		<div> 좋아하는 점심 메뉴를 선택해 주세요. </div> <p>
		<input type="hidden" name="id" value="1">
		<div> <input type="radio" name="lunch" value="p1"> 순대국밥 </div>
		<div> <input type="radio" name="lunch" value="p2"> 부대찌개 </div>
		<div> <input type="radio" name="lunch" value="p3"> 짜장면 </div>
		<div> <input type="radio" name="lunch" value="p4"> 초 밥 </div>
		<div> <input type="radio" name="lunch" value="p5"> 햄버거 </div> <p>
		<div> <input type="submit" value="투표하기"> </div>
	</form>
	
</body>
</html>