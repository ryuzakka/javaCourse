<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>display</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style>
		body {
			font-family:'Goyang';
			font-size:26px;
		}
		#block {
			display:block;
		}
		#inline {
			display:inline;
		}
	</style>
</head>
<body>
	<!-- display:값 => block태그와 inline태그의 변환 -->
	<div id="block">&lt;div&gt; Tag</div>
	<div id="block">Lorem ipsum dolor sit amet</div>
	<div id="block">Lorem ipsum dolor sit amet</div>
	<div id="block">Lorem ipsum dolor sit amet</div>
	<hr>
	<div id="inline">&lt;div&gt; Tag</div>
	<div id="inline">Lorem ipsum dolor sit amet</div>
	<div id="inline">Lorem ipsum dolor sit amet</div>
	<div id="inline">Lorem ipsum dolor sit amet</div>
	<hr>
	
	<span>&lt;span&gt; Tag</span>
	<span>Lorem ipsum dolor sit amet</span>
	<span>Lorem ipsum dolor sit amet</span>
	<span>Lorem ipsum dolor sit amet</span>
	<hr>
	<span id="block">&lt;span&gt; Tag</span>
	<span id="block">Lorem ipsum dolor sit amet</span>
	<span id="block">Lorem ipsum dolor sit amet</span>
	<span id="block">Lorem ipsum dolor sit amet</span>
	
</body>
</html>