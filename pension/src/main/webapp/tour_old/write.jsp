<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- tour/write.jsp -->
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:400px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section table tr td:nth-child(2) {
		padding-left:8px;
		text-align:left;
	}
</style>
<script>
	var size = 1;
	
	function fileAdd() {
		size++;
		var outer = document.getElementById('outer'); 
		var inner = "<p class='fname'><input type='file' name='fname"+size+"'></p>";
		
		outer.innerHTML = outer.innerHTML + inner;
		console.log(inner);
	}
	function fileDel() {
		if(size > 1) {
			document.getElementsByClassName('fname')[size-1].remove();
			size--;
		}
	}
</script>
<div id="section">
<form method="post" action="write_ok.jsp" enctype="multipart/form-data">
	<h2>여행 후기 작성</h2>
	<table width="500" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td> <input type="text" name="title"> </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td> <textarea rows="10" cols="50" name="content"></textarea> </td>
		</tr>
		<tr>
			<td> 파일첨부 </td>
			<td id="outer">
				<input type="button" onclick="fileAdd()" value="add">
				<input type="button" onclick="fileDel()" value="delete">
				<p class="fname"><input type="file" name="fname" ></p>
			</td>
		</tr>
	</table>
	<p>
	
	<p><input type="submit" value="후기 작성"></p>
	<a href="list.jsp"><input type="button" value="목록으로"></a>
</form>
</div>

<%-- <c:import url="../bottom.jsp" /> --%>