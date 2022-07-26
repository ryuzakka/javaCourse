<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${userid == null}">
	<c:redirect url="list.jsp" />
</c:if>

<c:import url="../top.jsp" />
<style>
	#section {
		width:1100px;
		height:800px;
		margin:auto;
		margin-top:80px;
		text-align:center;
	}
	#section table tr td:nth-child(2) {
		text-align:left;
	}
</style>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70a5855d29c102d6c8f57bfa08052026&libraries=services,clusterer,drawing"></script>

<script>
	// 주소검색 => 우편번호, 주소 정보를 가져온다.
	function addr_search() {	//우편번호 버튼 클릭시 호출 함수명
	  new daum.Postcode({
	      oncomplete: function(data) {
	          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	              addr = data.roadAddress;
	          } else { // 사용자가 지번 주소를 선택했을 경우(J)
	              addr = data.jibunAddress;
	          }
	
	          // 우편번호와 주소 정보를 해당 필드에 넣는다.
	          document.lunchInput.zip.value = data.zonecode; // 우편번호
	          document.lunchInput.addr1.value = addr;  // 주소
	          
	          // 커서를 상세주소 필드로 이동한다.
	          document.lunchInput.addr2.focus();
	      }
	  }).open();
	}
	
	// 주소 정보로 좌표값 가져오기 + 지도에 좌표 표시하기
	function getGeocoder() {
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };  
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		var addr1 = document.lunchInput.addr1.value;
		geocoder.addressSearch(addr1, function(result, status) {
		
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		        
		        // form에 위도와 경도 값을 전달
		        document.lunchInput.lat.value = result[0].y;	// 위도(latitude)
		        document.lunchInput.lng.value = result[0].x;	// 경도(longitude)
		        
		        // 지도영역(div) 보이기
		        document.getElementById('map').style.display = "inline-block";
		
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        //var infowindow = new kakao.maps.InfoWindow({
		        //    content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
		        //});
		        //infowindow.open(map, marker);
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});    
	}
</script>



<div id="section">
<form name="lunchInput" method="post" action="write_ok.jsp">
	<h2>맛집 등록</h2>
	<table width="700" border="1" align="center">
		<!-- <tr>
			<td> 작성자 </td>
			<td> <input type="text" name="regname" size="13" required> </td>
		</tr> -->
		<tr>
			<td> 식당이름 </td>
			<td> <input type="text" name="title" size="30" required> </td>
		</tr>
		<tr>
			<td> 위치 </td>
			<td>
				<span style="color:red;font-size:12px;">'주소찾기' 후 '좌표검색'을 누르세요</span><br>
				<input type="button" value="주소찾기" onclick="addr_search()">
				<input type="text" name="zip" size="6"><br>
				<input type="text" name="addr1" size="50"><br>
				<input type="text" name="addr2" size="50">
				<p>
				<span style="color:red;font-size:12px;">지도가 한번에 작동하지 않으면 '좌표검색'을 한번 더 누르세요.</span><br>
				<input type="button" onclick="getGeocoder()" value="좌표 검색"></p>
				<div id="map" style="width:100%;height:200px;display:none;"></div>
				<p><input type="text" name="lat" placeholder="위도">
				<input type="text" name="lng" placeholder="경도"></p>
			</td>
		</tr>
		<tr>
			<td> 대표메뉴 </td>
			<td> <input type="text" name="menu" size="50" required> </td>
		</tr>
	</table>
	<p><input type="submit" value="등록"></p>
	<a href="list.jsp"><input type="button" value="목록으로"></a>
</form>
</div>




<c:import url="../bottom.jsp" />