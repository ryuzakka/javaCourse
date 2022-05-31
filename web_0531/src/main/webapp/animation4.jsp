<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>animation4</title>
	<style>
		.aa {
			width:100px;
			height:100px;
			background:pink;
			border-radius:100px;
			display:flex;
			align-items:center;
			justify-content:center;
			animation-name:a4;
			animation-duration:2s;
			margin:50px 200px 0px 100px;
			animation-fill-mode:forwards;
			/* animation-iteration-count:infinite; */
		}
		.aa:nth-child(2) {		/* id='aa'인 요소의 2번째 */
			animation-name:a2;
			animation-duration:2s;
		}
		.aa:nth-child(3) {		/* id='aa'인 요소의 3번째 */
			animation-name:a3;
			animation-duration:2s;
		}
		@keyframes a1 {
			from{
				transform:translate(0px,0px);
			}
			to{
				background:orange;
				transform:translate(400px,0px);
			}
		}
		@keyframes a2 {
			from{
				transform:translate(20px,20px);
			}
			to{
				background:orange;
				transform:translate(250px,250px);
			}
		}
		@keyframes a3 {
			from{
				transform:translate(300px,300px);
			}
			to{
				background:orange;
				transform:translate(0px,-30px);
			}
		}
		@keyframes a4 {
			0% {
				transform:translate(0px,0px);
			}
			25% {
				transform:translate(100px,100px);
			}
			50% {
				transform:translate(0px,200px);
			}
			75% {
				transform:translate(100px,300px);
			}
			100% {
				transform:translate(0px,400px);
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