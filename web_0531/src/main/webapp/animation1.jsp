<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>animation1</title>
	<style>
		.aa {
			width:100px;
			height:100px;
			background:pink;
			animation-name:a1;
			animation-duration:4s;
			animation-iteration-count:1;
			animation-fill-mode:forwards;
		}
		.bb {
			width:1000px;
			height:100px;
			background:blue;
			animation-name:a3;
			animation-duration:3s;
			animation-iteration-count:1;
			animation-delay:2s;
			animation-fill-mode:backwards;	/* none, forwards, backwards, both */
		}
		.cc {
			width:100px;
			height:100px;
			background:hotpink;
			animation-name:rotate1;
			animation-duration:8s;
			animation-iteration-count:infinite;
		}
		@keyframes a1 { 	/* animation정의 */
			/* 동작의 변화를 부여 
				1) from ~ to
				2) % 
			*/
			from {background:pink;} 
			to {background:orange;}
		}
		@keyframes a2 {
			from {background:pink;} 
			to {background:red;}
		}
		@keyframes a3 {
			from {
				width:1000px; 
				background:skyblue;
			} 
			to {width:100px; background:red;}
		}
		@keyframes rotate1 {
			from{
				transform:rotate(0deg);
			}
			to{
				transform:rotate(1800deg);
			}
		}
	</style>
</head>
<body>
	<div class="aa"></div><p>
	<span class="aa">Lorem</span><p>
	<div class="bb"></div><p>
	<div class="cc"></div><p>
</body>
</html>