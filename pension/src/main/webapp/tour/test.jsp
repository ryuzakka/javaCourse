<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
<script>
	var size = 1;	// id='outer'안에 있는 file type의 input의 갯수를 알고, input의 name을 구분하기 위함
	
	function add() {
		size++;
		var outer = document.getElementById('outer'); 
		var inner = "<p class='fname'><input type='file' name='fname"+size+"'></p>";
		
		outer.innerHTML = outer.innerHTML + inner;
		console.log(inner);
	}
	
	function del() {
		if(size > 1) {
			document.getElementsByClassName('fname')[size-1].remove();
			size--;
		}
	}
	
</script>
</head>
<body>
	
	<input type="button" onclick="add()" value="add">
	<input type="button" onclick="del()" value="delete">
	<hr>
	
	<div id="outer">
		<p class="fname"><input type="file" name="fname1"></p>
	</div>
	
</body>
</html>