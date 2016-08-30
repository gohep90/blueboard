<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>배가 : 지도</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/map.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />

</head>

<%	
	String highDivision =request.getParameter("highDivision");//대분류
	System.out.println(highDivision);
	
	String middleDivision =request.getParameter("middleDivision");//중분류
	if(middleDivision==null)
		middleDivision="";
	System.out.println(middleDivision);
	
%>

<body onload="startData('<%=highDivision%>','<%=middleDivision%>')">

	<div class="logo">
		<a href="main.do"><img src="images/logo.png"/></a>
		<ul class="util">
			<li><a href="login.do">LOGIN</a></li>
			<li><a href="#">MY PAGE</a></li>
			<li><a href="#">FAVORITE</a></li>
		</ul>
		<hr>
	</div>
	
	<div id="gnb">
		<ul class="gnblist">
			<li class="highLi"><div class="high">유아/초등</div>
				<ul class="gnblist2">
					<li class="middle">초등 </li>
					<li class="middle">영재교육 </li>
					<li class="middle">유아 </li>
				</ul></li>

			<li class="highLi" ><div class="high">내신/입시</div>
				<ul class="gnblist2">
					<li class="middle">고등</li>
					<li class="middle">논술</li>
					<li class="middle">중등</li>
				</ul></li>
			<li class="highLi" ><div class="high">외국어</div>
				<ul class="gnblist2">
					<li class="middle">영어</li>
					<li class="middle">중국어</li>
					<li class="middle">일본어</li>
					<li class="middle">스페인어</li>
					<li class="middle">기타언어</li>
				</ul></li>
			<li class="highLi" ><div class="high">스포츠</div>
				<ul>
					<li class="middle">피트니스</li>
					<li class="middle">요가</li>
					<li class="middle">필라테스</li>
					<li class="middle">태권도</li>
					<li class="middle">수영</li>
					<li class="middle">댄스/무용</li>
					<li class="middle">격투기</li>
					<li class="middle">기타</li>
				</ul></li>
			<li class="highLi" ><div class="high">음악/미술</div>
				<ul class="gnblist2">
					<li class="middle">보컬</li>
					<li class="middle">작곡/작사</li>
					<li class="middle">악기</li>
					<li class="middle">미술</li>
				</ul></li>
			<li class="highLi" ><div class="high">여가생활</div>
				<ul class="gnblist2">
					<li class="middle">DIY가구</li>
					<li class="middle">가죽공예</li>
					<li class="middle">악세사리</li>
					<li class="middle">요리/베이킹</li>
					<li class="middle">기타</li>
				</ul></li>
			<li class="highLi" ><div class="high">직업교육</div>
				<ul class="gnblist2">
					<li class="middle">공무원시험</li>
					<li class="middle">컴퓨터</li>
					<li class="middle">CPA</li>
					<li class="middle">공인중개사</li>
					<li class="middle">기타</li>
					<li class="middle">방송</li>
				</ul></li>
		</ul>
	</div>

	<div class="map_wrap">
		<div id="map" style="width: 100%; height: 100%; overflow: hidden;"></div>

		<div class="option">
			<div>
				<form name="sform" action="#" method="get" id="sform">
					<input type="search" id="keyword" class="tbox"
						placeholder="무엇을 배우러 갈까요?" /> <input type="image" class="sbtn"
						src="images/search.png" alt="검색" />
				</form>
			</div>
		</div>

		<div id="menu_wrap" class="bg_white">
			<ul id="placesList"></ul>
		</div>
		<div id="pagination"></div>
	</div>
	<script type="text/javascript"
		src="//apis.daum.net/maps/maps3.js?apikey=7a6be21565c5c8e58c1ab67fb77914cf&libraries=clusterer"></script>
	<script type="text/javascript" src="<c:url value='/js/map.js'/>"></script>

</body>
</html>