<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.LunchDao" %>
<%@ page import="dao.GongjiDao" %>
<%@ page import="dao.CommentDao" %>
<%
	LunchDao ldao = new LunchDao();
	ldao.list(request);
	GongjiDao gdao = new GongjiDao();
	gdao.notice(request);
	CommentDao cdao = new CommentDao();
	cdao.commentCount(request);
%>
<!-- lunch/list.jsp -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70a5855d29c102d6c8f57bfa08052026&libraries=services"></script>
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:auto;
		margin:auto;
		margin-top:20px;
		text-align:center;
	}
	#section table tr:first-child {
		text-align:center;
	}
	#section h1 {
		margin:50px 0px 15px 0px;
	}
	#section .pageIntro {
		font-size:14px;
		color:#2F4F4F;
		margin-bottom:40px;
	}
</style>
<script>
	var chk;
	//좌표값을 지도에 표시하기
	function openMap(addr, lat, lng, n, last) {
		
		var mapContainer = document.getElementsByClassName('map')[n], // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(addr, function(result, status) {
		
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		        
		        // 지도영역(div) 보이기
		        if(n != chk) {
					document.getElementsByClassName('map')[chk].style.display = "none";
				}
		        document.getElementsByClassName('map')[n].style.display = "inline-block";
		        
		        var hh = 600;
				document.getElementById('section').style.height = hh+"px";
		
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});
		chk = n;
	}
</script>
<div id="section">
	
	<h1> 내가 아는 맛집을 추천 해주세요! </h1>
	<div class="pageIntro">회원제 게시판 입니다. 내가 아는 맛집을 추가하려면 로그인 해주세요.</div>
	<c:if test="${userid != null}"><p><a href="write.jsp"><input type="button" value="내가 아는 맛집 추가하기"></a></p></c:if>
	<table width="1000" align="center" border="1">
		<tr>
			<td width="150"><strong>이 름</strong></td>
			<td></td>
			<td width="200"><strong>주메뉴</strong></td>
			<td width="530"><strong>주 소</strong><br><span style="font-size:13px;color:tomato;"> 지도보기는 2번 클릭하셔야 정확합니다.</span> </td>
			<td width="120"><strong>작성자</strong></td>
		</tr>
		
		
		
		<c:forEach items="${list}" var="lunch" varStatus="status">
		<tr>
			<td><a href="readnum.jsp?id=${lunch.id}">${lunch.title}</a></td>
			<td width="20" align="center">
				<c:forEach items="${cmmt}" var="dat">
					<c:set var="bid" value="${dat.bid}" />
					<c:set var="cnt" value="${dat.cnt}" />
					<c:if test="${lunch.id == bid}"><span>[${cnt}]</span></c:if>
				</c:forEach>
			</td>
			<td> ${lunch.menu} </td>
			<td>
				${lunch.addr1} ${lunch.addr2}
				<input type="button" value="지도보기" onclick="openMap('${lunch.addr1}','${lunch.lat}','${lunch.lng}',${status.index})"><br>
				<div class="map" style="width:500px;height:200px;margin-top:10px;display:none"></div>
			</td>
			<td> ${lunch.regname} </td>
		</tr>
		</c:forEach>
	</table>

	<div id="map" style="width:100%;height:200px;"></div>
	<div id="clickLatlng"></div>

</div>

<%-- <c:import url="../bottom.jsp" /> --%>