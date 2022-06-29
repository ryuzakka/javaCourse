<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vote</title>
<style>
	#makingForm {
		display:none;
		padding:5px 15px;
		width:800;
		height:auto;
		border:1px solid purple;
	}
</style>
<script>
	function openform() {
		document.getElementById('makingFrom').style.display = "inline-block";
	}
	
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
<body>	<!-- 0629/vote_auto.jsp -->
	
	<input type="button" value="설문 항목 생성" onclick="openform()"><p>
	<div id="makingForm">
		<form>
		<span>설문 생성 양식</span><p>
		<input type="text" name="title" placeholder="질문 내용"><p>
		<input type="text" name="p1name" placeholder="답변1"><br>
		<input type="text" name="p2name" placeholder="답변2"><br>
		<input type="text" name="p3name" placeholder="답변3"><br>
		<input type="text" name="p4name" placeholder="답변4"><br>
		<input type="text" name="p5name" placeholder="답변5">
		</form>
	</div>
	<hr>
	
	<form method="post" action="vote_ok.jsp" onsubmit="return check()">
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