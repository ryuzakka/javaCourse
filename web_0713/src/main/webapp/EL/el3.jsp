<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- EL 표현식의 연산 -->
<%
	request.setAttribute("kor", 90);
	request.setAttribute("eng", 80);
%>

<!-- 표현식에서 산술연산 -->
국어 : ${kor} <br>
영어 : ${eng} <p>
합산 : ${kor+eng}
<hr>

<!-- 표현식에서 비교연산 -->
국어 > 영어 : ${kor > eng} <br>
국어 == 영어 : ${kor == eng} <br>
국어 < 영어 : ${kor < eng} <p>
국어 gt 영어 : ${kor gt eng} <br>
국어 eq 영어 : ${kor eq eng} <br>
국어 lt 영어 : ${kor lt eng} <p>
국어 != 영어 : ${kor ne eng} <p>
<hr>

<!-- 논리연산 -->
true && true : ${true && true} <br>
true and false : ${true and false} <br>
true || false : ${true || false} <br>
true or false : ${true or false} <p>
<hr>

<% request.setAttribute("num", ""); %>
<!-- null 과 빈값 -->
empty num : ${empty num} <br>	<!-- empty : 비었는지 확인함 -->
empty imsi : ${empty imsi} <p>	<!-- 변수가 없어도 비었다고 반환함 -->
num == null : ${num == null} <br>
imsi == null : ${imsi == null} <p>
<hr>

<!-- 삼항연산 -->
kor>eng ? : ${kor>eng ? "국어가 크다":"영어가 크다"} <p>
<hr>

<!-- 표현식에서 대입연산 -->
국어 : ${kor=70} <br>
<%=request.getAttribute("kor") %>
