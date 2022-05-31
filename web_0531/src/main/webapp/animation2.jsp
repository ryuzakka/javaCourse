<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>animation2</title>
	<style>
		.aa {
			width:100px;
			height:100px;
			background:pink;
			border-radius:100px;
			display:flex;
			align-items:center;
			justify-content:center;
			animation-name:rotate1;
			animation-duration:2s;
			margin:50px 200px 0px 100px;
			animation-fill-mode:forwards;
		}
		.aa:nth-child(2) {		/* id='aa'인 요소의 2번째 */
			transform-origin:left;
		}
		.aa:nth-child(3) {		/* id='aa'인 요소의 3번째 */
			transform-origin:right;
		}
		.bb {
			width:100px;
			height:100px;
			background:yellowgreen;
			display:flex;
			align-items:center;
			justify-content:center;
			animation-name:rotate1;
			animation-duration:3s;
		}
		.cc {
			width:100px;
			height:100px;
			background:skyblue;
			display:flex;
			align-items:center;
			justify-content:center;
			animation-name:rotate1;
			animation-duration:4s;
		}
		@keyframes rotate1 {
			from{
				transform:rotate(0deg);
			}
			to{
				transform:rotate(360deg);
				background:orange;
			}
		}
	</style>
</head>
<body>
	<div class="aa">Lorem ipsum</div>
	<div class="aa">Lorem ipsum</div>
	<div class="aa">Lorem ipsum</div>
</body>
</html>