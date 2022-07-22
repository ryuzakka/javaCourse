<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dao.LunchDao" %>
<%
	LunchDao dao = new LunchDao();
	dao.list(request);
%>
<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:400px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70a5855d29c102d6c8f57bfa08052026&libraries=services"></script>
<script>
	var chk;
	// 좌표값을 지도에 표시하기
	function openMap(addr, lat, lng, n, last) {
		
		var mapContainer = document.getElementsByClassName('map')[n], // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
		        level: 5 // 지도의 확대 레벨
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
	
	<h2> 메뉴 리스트 </h2>
	<p><a href="write.jsp"><input type="button" value="메뉴 추가"></a></p>
	<table width="1000" align="center" border="1">
		<tr>
			<td> 이 름 </td>
			<td> 주메뉴 </td>
			<td> 주 소 </td>
			<td> 작성자 </td>
		</tr>
		<c:forEach items="${list}" var="lunch" varStatus="status">
			<%-- <c:out value="${status.last}" /> --%>
		<tr>
			<td><a href="">${lunch.title}</a></td>
			<td> ${lunch.menu} </td>
			<td>
				${lunch.addr1} ${lunch.addr2}
				<input type="button" value="지도보기" onclick="openMap('${lunch.addr1}','${lunch.lat}','${lunch.lng}',${status.index}, ${status.last})">
				<br>
				<div class="map" style="width:300px;height:200px;margin-top:10px;display:none"></div>
			</td>
			<td> ${lunch.regname} </td>
		</tr>
		</c:forEach>
	</table>

	<div id="map" style="width:100%;height:200px;"></div>
	<div id="clickLatlng"></div>

</div>


<c:import url="../bottom.jsp" />