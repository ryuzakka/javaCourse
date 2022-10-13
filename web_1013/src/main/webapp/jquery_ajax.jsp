<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		$("#btn").one("click", function(){
			$("#btn").after($('<span id="inn"></span>'));
		});
		$("#btn").click(function(){
			$.ajax({
				url:"ajax.jsp",
				success:function(result){
					console.log(result);
					$("#inn").text(result);
				}
			});
		});
		
	});
</script>
</head>
<body>
	<!-- jQuery AJAX -->
	
	<input type="button" value="ajax호출" id="btn" />
	
</body>
</html>