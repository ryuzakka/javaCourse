<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>0624js/string2</title>
<style>
	body {
		padding:40px;
	}
	#aa {
		width:400px;
		height:30px;
		background:#eeeeee;
	}
</style>
<script>
	function aster() {
		var title = document.dhr.title.value;
		var front = title.substring(0, 10);
		var len = title.length - 10;
		
		var star = "";
		for(i=0; i<len; i++) {
			star += "*";
		}
		
		document.getElementById("aa").innerText = front + star; 
	}
</script>
</head>
<body>	<!-- 0624js/string2 -->
	
	<!-- 제목을 입력한 후 버튼을 클릭하면 앞에서부터 10자를 제외한 나머지는 ****로 처리하여 id="aa"에 전달 -->
	<form name="dhr">
		제목 <input type="text" name="title" size="50"><p>
		<input type="button" value="클릭" onclick="aster()"><p>
		<div id="aa"></div>
	</form>
	
</body>
</html>