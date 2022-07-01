<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 제이쿼리 ui css -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 제이쿼리 style css -->
<link rel="stylesheet" href="/resources/demos/style.css">
<!-- 제이쿼리 js -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- 제이쿼리 ui js -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$.datepicker.setDefaults({
		dateFormat: 'yy.mm.dd',
		prevText: '이전달',
		nextText: '다음달',
		monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		monthNamesShort: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'],
		dayNames:['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
		dayNamesShort: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
		dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],	/* 이걸로 출력됨 */
		showMonthAfterYear: true,
		constrainInput: true,
		yearSuffix: '년'
	});
	
	$(function() {
		$('#datepicker').datepicker();
	});
	
</script>

<title>Insert title here</title>
</head>
<body>
	
	<p>Date : <input type="text" id="datepicker" placeholder="YYYY-MM-DD"></p>
	
</body>
</html>