<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 선생님 소스코드 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <script>
   function init(y,m)
   {
	   // 달력을 완성한 후 출력하고자 하는 요소에 전달
	   // 1일의 요일
	   if(!y)
	   {
		   var today=new Date();
		   var year=today.getFullYear();
		   var month=today.getMonth(); 
	   }
	   else
	   {
		   var year=y;
		   var month=m;
	   }	   
	     // 0~11
	   // 이번달의 1일 날짜의 객체를 생성
	   var xday=new Date(year,month,1);
	   var yoil=xday.getDay();
	   
	   // 총일수
	   var mon=[31,28,31,30,31,30,31,31,30,31,30,31];
	   var chong=mon[month];
	   // 윤년일 경우 2월이 29일로 변경
	   if(month==1)
	   {
		  if( (year%4 == 0)&&(year%100 != 0) || (year%400 == 0) ) // 년도를 4로 나눈 나머지가 0이면 윤년 100으로 나눈 나머지가 0이면 윤년X
			  chong++;
	   }
       
	   // 몇주
	   var ju=Math.ceil((chong+yoil)/7) ;
	   
	   // 테이블 태그를 이용하여 달력을 만들기
	   var cal_data="<table width='200' border='1'>";
	   
	   // caption태그에 이전 다음 넣기
	   cal_data=cal_data+"<caption>";
	   if(month==0) // 1월이면
	     cal_data=cal_data+" <a href='javascript:init("+(year-1)+",11)'> 이전 </a>";
	   else
	     cal_data=cal_data+" <a href='javascript:init("+year+","+(month-1)+")'> 이전 </a>";	 
	   //                <a href="javascript:init(년도,월)">
	   
	   cal_data=cal_data+year+"년 "+(month+1)+"월 "; // 출력
	   
	   if(month==11) // 12월이면
		 cal_data=cal_data+" <a href='javascript:init("+(year+1)+",0)'> 다음 </a>";
	   else
	     cal_data=cal_data+" <a href='javascript:init("+year+","+(month+1)+")'> 다음 </a>";
	   
	   cal_data=cal_data+"</caption>";
	   cal_data=cal_data+"<tr>";
	   cal_data=cal_data+" <td> 일 </td> ";
	   cal_data=cal_data+" <td> 월 </td> ";
	   cal_data=cal_data+" <td> 화 </td> ";
	   cal_data=cal_data+" <td> 수 </td> ";
	   cal_data=cal_data+" <td> 목 </td> ";
	   cal_data=cal_data+" <td> 금 </td> ";
	   cal_data=cal_data+" <td> 토 </td> ";
	   cal_data=cal_data+"</tr>";
	   var day=1;
	   for(i=1;i<=ju;i++) // 행
	   {
		  cal_data=cal_data+"<tr>";
         
		  for(j=0;j<7;j++)
          {	  
			 if( (j<yoil && i==1) || (chong < day))
			 {	 
			   cal_data=cal_data+"<td> </td>";
			 }
			 else
			 {	 
				 switch(j)
				 {
				     case 0: cal_data=cal_data+"<td style='color:red'>"+day+"</td>"; break;
				     case 6: cal_data=cal_data+"<td style='color:blue'>"+day+"</td>"; break;
					 default: cal_data=cal_data+"<td>"+day+"</td>";
				 }

				 day++;
			 }
			
          }
		  
		  cal_data=cal_data+"</tr>";
	   }	   
		   
	   cal_data=cal_data+"</table>";
	   
	   
      document.getElementById("pkc").innerHTML=cal_data;
   }
  </script>
</head>
<body>  <!-- cal_js.jsp -->
   <input type="button" onclick="init()" value="보기">
   <div id="pkc"></div>
</body>

</html>