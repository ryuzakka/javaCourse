<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.TourDao" %>
<%
	TourDao dao = new TourDao();
	dao.content(request, 2);
%>
<!-- tour/update.jsp -->
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
		text-align:left;
		margin:20px;
	}
</style>
<script>
	window.onload = function() {
		var hh = 120;
		var th1 = document.getElementsByTagName('table')[0].offsetHeight;
		var res = hh + th1;

		document.getElementById('section').style.height = res+"px"; 
	}
	
	var size = 1;
	
	function fileAdd() {
		size++;
		var outer = document.getElementById('outer'); 
		var inner = "<p class='fname'><input type='file' name='fname"+size+"'></p>";
		
		outer.innerHTML = outer.innerHTML + inner;
		console.log(inner);
	}
	function fileDel() {
		document.getElementsByClassName('fname')[size-1].remove();
		if(size > 1) {
			size--;
		}
	}
	
	function del_add(n, my) {
		var img = document.getElementsByClassName('chkimg')[n];
		if(my.checked) {
			img.style.opacity = "0.3";
		} else {
			img.style.opacity = "1";			
		}
	}
	
	function check(upform) {
		// checkbox가 체크된 그림파일명과 체크안된 그림파일명을 각각 저장
		var box = document.getElementsByName('delBox');
		var len = box.length;
		var delImg = "";
		var saveImg = "";
		
		console.log(len);
		for(i=0; i<len; i++) {			
			if(upform.delBox[i].checked) {
				// 삭제할 파일
				delImg += upform.delBox[i].value + ",";
				console.log("delImg:"+delImg);
			} else {
				// 삭제하지 않을 파일 (저장할 파일)				
				saveImg += upform.delBox[i].value + ",";
				console.log("saveImg:"+saveImg);
			}
		}
		
		upform.delfname.value = delImg;
		upform.stayfname.value = saveImg;
		
		//console.log(upform.delfname.value +" , "+ upform.finalfname.value);
		
		return true;
	}
</script>
<div id="section">
<form method="post" action="update_ok.jsp" onsubmit="return check(this)" enctype="multipart/form-data">
	<h2>여행 후기글 수정</h2>
	<input type="hidden" name="id" value="${content.id}">
	<table width="500" align="center" border="1">
		<tr>
			<td> 제 목 </td>
			<td><input type="text" name="title" value="${content.title}"></td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> ${content.userid} </td>
		</tr>
		<tr>
			<td> 내 용 </td>
			<td><textarea rows="10" cols="50" name="content">${content.content}</textarea></td>
		</tr>
		<tr>
			<td> 사 진 </td>
			<td>
				<!--
					경우의 수
					1. 기존 파일 삭제
					2. 새로운 파일 추가
					3. 변동 없음
				-->
				<input type="hidden" name="oldfname" value="${content.fname}">
				<input type="hidden" name="delfname" value="">
				<input type="hidden" name="stayfname" value="">
				
				<div id="outer">
					<input type="button" onclick="fileAdd()" value="add">
					<input type="button" onclick="fileDel()" value="delete">
					<p class="fname"><input type="file" name="fname1"></p>
				</div>
				
				<span>기존 사진</span>
				<span style="color:tomato;font-size:12px">(삭제하시려면 체크하세요.)</span><br>
				<c:if test="${content.file == null}"><span> 없음</span></c:if>
				
				<c:if test="${content.file != null}">
				
					<c:set var="t" value="0" />
					<c:forEach items="${content.file}" var="img">
						<img src="../tour/img/${img}" width="100" class="chkimg">
						<input type="checkbox" onclick="del_add(${t}, this)" name="delBox" value="${img}">
						<c:set var="t" value="${t+1}" />
						<br>
					</c:forEach>
				
				</c:if>
				
			</td>
		</tr>
	</table>
	
	<p><input type="submit" value="수정완료"></p>
</form>

	<a href="list.jsp"><input type="button" value="목록으로"></a>
</div>
<c:import url="../bottom.jsp" />