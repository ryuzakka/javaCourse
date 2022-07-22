<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="dao.LunchDao" %>
<%@ page import="dao.CommentDao" %>
<%
	LunchDao dao = new LunchDao();
	dao.content(request);
%>
<!-- lunch/content.jsp -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70a5855d29c102d6c8f57bfa08052026&libraries=services"></script>
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:auto;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section #cmmtList {
		margin-top:30px;
	}
	#section #cmmtUpd {
		margin-top:30px;
	}
</style>

<script>
	window.onload = function() {
		var container = document.getElementById('map'); // 지도를 표시할 div
		var options = {
	        center: new kakao.maps.LatLng(${lunch.lat}, ${lunch.lng}), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
		var map = new kakao.maps.Map(container, options); 
		
		// 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(${lunch.lat}, ${lunch.lng}); 

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
		    position: markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);
	}
	
	function delCheck(id) {
		var chk = confirm('삭제하시겠습니까?');
		if(chk)
			location = "delete.jsp?id="+id;
		else
			return false;
	}
	
	function cmmtDel(id, bid) {
		var cmtchk = confirm('삭제하시겠습니까?');
		if(cmtchk)
			location = "comment_delete.jsp?id="+id+"&bid="+bid;
		else
			return false;
	}
	
	function cmmtUpdate(id, bid, content) {
		
		var inner = "<div id='cmmtUpd'>";
		inner += "<form method='post' action='comment_update.jsp'>";
		inner += "<input type='hidden' name='bid' value='${dat.bid}'>"; 
		inner += "<input type='hidden' name='id' value='${dat.id}'>";
		inner += "<input type='text' name='content' value='${dat.content}' placeholder='한마디 하시겠어요?' size='50'>";
		inner += "<input type='submit' value='등록'>";
		inner += "</from>";
		inner += "</div>";
		
		console.log(id);
		console.log(bid);
		console.log(content);
		document.getElementById('cmmtUpd').style.display = "block";
		document.upfrm.id.value = id;
		document.upfrm.bid.value = bid;
		document.upfrm.content.value = content;

		
		//console.log(my);
		//tr.append(frm);
		
		//document.getElementById('cmmtUpd').style.display = "table-row";
	}
</script>
<div id="section">
	
	<h2>${lunch.title}</h2>
	<table width="800" align="center" border="1">
		<tr>
			<td> 이 름 </td>
			<td> ${lunch.title} </td>
		</tr>
		<tr>
			<td> 주메뉴 </td>
			<td> ${lunch.menu} </td>
		</tr>
		<tr>
			<td> 작성자 </td>
			<td> ${lunch.regname} </td>
		</tr>
		<tr>
			<td> 작성일 </td>
			<td> ${lunch.writeday} </td>
		</tr>
		<tr>
			<td> 주소 </td>
			<td> ${lunch.addr1} </td>
		</tr>
		<tr>
			<td> 위치 </td>
			<td> <div id="map" style="width:470px;height:280px;margin:8px;"></div> </td>
		</tr>
	</table>
	<p>
	
	<c:if test="${(sessionScope.userid == 'admin') || (name == lunch.regname)}">
		<a href="update.jsp?id=${lunch.id}"><input type="button" value="수정"></a>
		<a href="delete.jsp?id=${lunch.id}"><input type="button" value="삭제"></a> <p>
	</c:if>

	<p><a href="list.jsp"><input type="button" value="목록"></a></p>

<%
	CommentDao cdao = new CommentDao();
	cdao.commentList(request);
%>
	
	<c:if test="${userid != null}">
		<div id="cmmtForm">
			<form method="post" action="comment_write.jsp">
			<div id="cmmtContent">
				<input type="hidden" name="bid" value="${lunch.id}">
				<input type="text" name="content" placeholder="한마디 하시겠어요?" size="60">
				<input type="submit" value="등록">
			</div>
			</form>
		</div>
	</c:if>
	
	<div id="cmmtList">
		<table width="700" align="center" border="0">
			<tr>
				<td width="90"> 닉네임 </td>
				<td width="450"> 내 용 </td>
				<td width="100"> 작성일 </td>
				<td width="60" colspan="2"></td>
			</tr>
			<c:forEach items="${cmmt}" var="dat" varStatus="status">
				<tr class="cmmtlist">
					<td>${dat.name}</td>
					<td>${dat.content}</td>
					<td>${dat.writeday}</td>
					<c:if test="${dat.userid == sessionScope.userid}">
						<td>
							<input type="button" value="수정" onclick="cmmtUpdate(${dat.id},${dat.bid},'${dat.content}')">
						</td>
						<td><a href="javascript:cmmtDel(${dat.id},${dat.bid})"><input type="button" value="삭제"></a></td>
					</c:if>
				</tr>
			</c:forEach>
		</table>
	</div>
	

<div id="cmmtUpd" style="display:none;">
<form name="upfrm" method="post" action="comment_update.jsp">
<span>댓글수정</span>
<input type="hidden" name="bid" value="">
<input type="hidden" name="id" value="">
<input type="text" name="content" value="" placeholder="한마디 하시겠어요?" size="50">
<input type="submit" value="등록">
</form>
</div>



</div>

<c:import url="../bottom.jsp" />