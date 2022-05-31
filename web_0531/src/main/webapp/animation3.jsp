<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>animation3</title>
	<style>
		.aa {
			width:100px;
			height:100px;
			background:pink;
			border-radius:100px;
			display:flex;
			align-items:center;
			justify-content:center;
			animation-name:scale1;
			animation-duration:2s;
			margin:50px 200px 0px 100px;
			animation-fill-mode:forwards;
		}
		.aa:nth-child(2) {		/* id='aa'인 요소의 2번째 */
			transform-origin:left;
			animation-name:scale2;
			animation-duration:2s;
		}
		.aa:nth-child(3) {		/* id='aa'인 요소의 3번째 */
			animation-name:scale3;
			animation-duration:2s;
		}
		@keyframes scale1 {
			from{
				transform:scale(0.5,0.5);
			}
			to{
				background:orange;
				transform:scale(1.5,1.5);
			}
		}
		@keyframes scale2 {
			from{
				transform:scale(2,2);
			}
			to{
				background:orange;
				transform:scale(1.5,1.5);
			}
		}
		@keyframes scale3 {
			from{
				transform:scale(0.5,0.5);
			}
			to{
				background:orange;
				transform:scale(2,2);
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