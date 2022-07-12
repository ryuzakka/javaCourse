<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>js/checkbox</title>
<script>
	// javascript에서 checkbox에 접근할 방법을 정해야 한다.
	const price = [1000,1500,2300,3400];
	const cost = new Array(price.length);
	
	function sub_change() {	// 호출되면 하위 체크박스는 해제되거나 체크된다.
		var main = document.dhr.main;
		var sub = document.dhr.sub;
		
		if(main.checked) {	// 체크하기
			for(i=0; i<sub.length; i++) {
				sub[i].checked = true;
				cost[i] = price[i];
				console.log("cost["+i+"]: " + cost[i]);
			}
		} else {	// 해제하기
			for(i=0; i<sub.length; i++) {
				sub[i].checked = false;
				cost[i] = 0;
				console.log("cost["+i+"]: " + cost[i]);
			}
		}
		howMuch();
	}
	
	function main_change() {
		var main = document.dhr.main;
		var sub = document.dhr.sub;
		var cnt = 0;
		
		for(i=0; i<sub.length; i++) {
			if(sub[i].checked){				
				cnt++;
				cost[i] = price[i];
				console.log("cost["+i+"]: " + cost[i]);
			}
			else {
				cost[i] = 0;
				console.log("cost["+i+"]: " + cost[i]);
			}
		}
		if(cnt == sub.length) {	// 하위 체크박스가 전부 선택
			main.checked = true;
		}
		else {	// 하나라도 해제되어 있음
			main.checked = false;
		}
		howMuch();
	}
	
	function howMuch() {
		var total = 0;
		for(i=0; i<cost.length; i++)
			total += cost[i];
		document.getElementById('total').innerText = total.toLocaleString() + " 원"; 
	}
	
</script>
</head>
<body>
	<!-- 
		1. 전체선택이 선택되면 sub 전부 선택됨 / 전체선택이 해제되면 sub 전부 해제됨
		2. 하위 체크박스를 클릭했을 때 => 하위 체크박스가 전부 선택된 상태인지 확인 => Yes, 전체선택 체크박스는 true
																=> No, 전체선택 체크박스 false
	-->
	
	<form name="dhr">
		<input type="checkbox" name="main" onclick="sub_change()"> 전체선택 <p>
		<hr>
		<input type="checkbox" name="sub" onclick="main_change()"> 첫 번째 품목 : 1,000원 <br>
		<input type="checkbox" name="sub" onclick="main_change()"> 두 번째 품목 : 1,500원 <br>
		<input type="checkbox" name="sub" onclick="main_change()"> 세 번째 품목 : 2,300원 <br>
		<input type="checkbox" name="sub" onclick="main_change()"> 네 번째 품목 : 3,400원 <br>
	</form>
	<div id="total"></div>
	
</body>
</html>