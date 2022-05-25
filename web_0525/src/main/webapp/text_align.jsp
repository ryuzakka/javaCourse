<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Text-Align</title>
		<style>
			p{ font-size:20px; }
		</style>
	</head>
	<body>	<!-- text-align:정렬하기 -->
	
		<!-- html태그 -->
		<p align="left"> Lorem ipsum dolor sit amet </p>
		<p align="center"> Lorem ipsum dolor sit amet </p>
		<p align="right"> Lorem ipsum dolor sit amet </p>
		
		<!-- h1 ~ h6 -->
		<h3 align="right"> Lorem ipsum dolor sit amet </h4>
		
		<!-- table, tr, td -->
		<table border="1" width="200" height="100" align="center">
			<caption>Name-Age Table</caption>
			<tr align="center">
				<td valign="top">Name</td>
				<td>Age</td>
			</tr>
			<tr>
				<td align="left">Ryu</td>
				<td align="right" valign="bottom">33</td>
			</tr>
		</table>
		
		<!-- div -->
		<div align="center"><img src="img/Desert.jpg" width="300" heigth="250"></div>
		
		<!-- li -->
		<li align="center"> hahaha </li>
		
	</body>
</html>