<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>selector2_ex2</title>
	<style>
		.aa > b{	/* > 는 aa클래스 내의 첫번째 자식 중 b태그 */
			color:red;
			
		}
		.cc b {		/* 띄어쓰기 는 요소 내의 모든 후손 중 b태그 */
			color:red;
		}
		.bb > b {
			text-decoration:underline;
		}
	</style>
</head>
<body>
	<!-- 선택자(selector) 연습문제 : Today is Tuesday 에 밑줄 -->
	
	<!-- 자손 후손 선택자 -->
	<div class="aa">		<!-- 1대 -->
		<b>첫번째(자손)</b> <p>		<!-- 2대 -->
		<div class="bb">		<!-- 2대 -->
			<b>Today is Tuesday</b> <p>	<!-- 3대 -->
			<span>						<!-- 3대 -->
				<b>Holiday's yesterday.</b>	<!-- 4대 -->
			</span>
		</div>
	</div>
	<hr>
	<div class="cc">		<!-- 1대 -->
		<b>첫번째(자손)</b> <p>		<!-- 2대 -->
		<div class="dd">		<!-- 2대 -->
			<b>Today is Tuesday</b> <p>	<!-- 3대 -->
			<span>						<!-- 3대 -->
				<b>Holiday's yesterday.</b>	<!-- 4대 -->
			</span>
		</div>
	</div>
	
</body>
</html>