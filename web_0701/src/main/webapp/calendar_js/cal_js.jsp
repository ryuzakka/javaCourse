<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar : js</title>
<script>
	function init(yy, mm) {
		/* 달력을 완성한 후 출력하고자 하는 요소에 전달 */
		
		// 1일의 요일
		var year;
		var month;
		if(!yy) {
			var today = new Date();
			year = today.getFullYear();
			month = today.getMonth();	// 월 : 0(Jan) ~ 11(Dec)			
		} else {
			year = yy;
			month = mm;
		}
		
		var xday = new Date(year, month, 1);
		var yoil = xday.getDay();	// 요일 : 0 ~ 6
		
		// 총일수
		var mon = [31,28,31,30,31,30,31,31,30,31,30,31];
		var total = mon[month];
			// 윤년일 경우 2월이 29일로 변경
		if(month==1) {
			if( ((year%4)==0 && (year%100)!=0) || (year%400)==0 ) {
				total++;
			}
		}
		
		// 몇 주
		var week = Math.ceil((total+yoil)/7);
		
		var cal = "<table width='400' border='1'>";
		cal += "<caption>";
		if(month == 0) {			
			//cal += "<a href='cal_js.jsp?year="+(year-1)+"&month=11'>이전달</a> ";
			cal += "<a href='javascript:init("+(year-1)+",11)'>다음달</a>";
		} else {			
			//cal += "<a href='cal_js.jsp?year="+year+"&month="+(month-1)+"'>이전달</a> ";
			cal += "<a href='javascript:init("+year+","+(month-1)+")'>이전달</a>";
		}
		cal += year + "년 " + (month+1) +"월 "
		if(month == 11) {			
			//cal += "<a href='cal_js.jsp?year="+(year+1)+"&month=0'>다음달</a>";
			cal += "<a href='javascript:init("+(year+1)+",0)'>다음달</a>";
		} else {			
			//cal += "<a href='cal_js.jsp?year="+year+"&month="+(month+1)+"'>다음달</a>";
			cal += "<a href='javascript:init("+year+","+(month+1)+")'>다음달</a>";
		}
		cal += "</caption>";
		cal += "<tr>";
		cal += "<td>일</td>";
		cal += "<td>월</td>";
		cal += "<td>화</td>";
		cal += "<td>수</td>";
		cal += "<td>목</td>";
		cal += "<td>금</td>";
		cal += "<td>토</td>";
		cal += "</tr>";
		
		var day = 1;
		for(i=1; i<week+1; i++) {
			cal += "<tr>";
			for(j=0; j<7; j++) {
				if( (i==1 && j<yoil) || (day>total) ) {
					cal += "<td> </td>";
				} else {
					var css;
					switch(j) {
						case 0: css = "style='color:red'"; break;
						case 6: css = "style='color:blue'"; break;
						default: css = "";
					}
					cal += "<td "+ css +">"+ day +"</td>";
					day++;
				}
			}
			cal += "</tr>";
		}
		cal += "</table>";
		
		document.getElementById('calendar').innerHTML = cal;
	}
</script>
</head>
<body>	<!-- 0701/cal_js.jsp -->
	<!-- <input type="date"> -->
	
	<input type="button" onclick="init()" value="달력보기">
	<p><hr>
	
	<div id="calendar"></div>
	
</body>
</html>