<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>배우러 가는길 지도</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script type="text/javascript" src="<c:url value='/js/academy.js'/>"></script>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/map2.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />

</head>

<%	
	String highDivision =request.getParameter("highDivision");	
	System.out.println(highDivision);
%>

<body onload="startData('<%=highDivision%>')">

	<div class="logo">
		<a href="main.do"><img src="images/logo.png" alt="푸른 칠판" /></a>

		<ul class="util">
			<li><a href="#">JOIN</a></li>
			<li><a href="#">LOGIN</a></li>
			<li><a href="#">SITEMAP</a></li>
			<li><a href="#">ABOUT US</a></li>
		</ul>
	</div>

	<div id="gnb">
		<ul class="gnblist">
			<li class="m m1"><a class="mm" href="#">유아/초등</a>
				<ul class="gnblist2">
					<li onclick="test()">초등 <!--<ul>
                    	<li><a href="#">국어</a></li>
                        <li><a href="#">영어</a></li>
                        <li><a href="#">수학</a></li>
                        <li><a href="#">사회/과학</a></li>
                        <li><a href="#">제2외국어</a></li>
                        <li><a href="#">논술</a></li>
                        <li><a href="#">예체능</a></li>
                    </ul>--></li>
					<li>영재교육 <!--<ul>
                    	<li><a href="#">국어</a></li>
                        <li><a href="#">영어</a></li>
                        <li><a href="#">수학</a></li>
                        <li><a href="#">사회/과학</a></li>
                        <li><a href="#">제2외국어</a></li>
                        <li><a href="#">논술</a></li>
                        <li><a href="#">예체능</a></li>
                    </ul>--></li>
					<li>유아 <!-- <ul>
                    	<li><a href="#">국어</a></li>
                        <li><a href="#">영어</a></li>
                        <li><a href="#">수학</a></li>
                        <li><a href="#">사회/과학</a></li>
                        <li><a href="#">제2외국어</a></li>
                        <li><a href="#">논술</a></li>
                        <li><a href="#">예체능</a></li>
                    </ul>--></li>
				</ul></li>

			<li class="m m2"><a class="mm" href="#">내신/입시</a>
				<ul class="gnblist2">
					<li><div class="divisionList">고등</div></li>
					<li><div class="divisionList">논술</div></li>
					<li><div class="divisionList">중등</div></li>
				</ul></li>
			<li class="m m3"><a class="mm" href="#">외국어</a>
				<ul class="gnblist2">
					<li><div class="divisionList">영어</div></li>
					<li><div class="divisionList">중국어</div></li>
					<li><div class="divisionList">일본어</div></li>
					<li><div class="divisionList">스페인어</div></li>
					<li><div class="divisionList">기타언어</div></li>
				</ul></li>
			<li class="m m4"><a class="mm" href="#">스포츠</a>
				<ul>
					<li><div class="divisionList">피트니스</div></li>
					<li><div class="divisionList">요가</div></li>
					<li><div class="divisionList">필라테스</div></li>
					<li><div class="divisionList">태권도</div></li>
					<li><div class="divisionList">수영</div></li>
					<li><div class="divisionList">댄스/무용</div></li>
					<li><div class="divisionList">격투기</div></li>
					<li><div class="divisionList">기타</div></li>
				</ul></li>
			<li class="m m5"><a class="mm" href="#">음악/미술</a>
				<ul class="gnblist2">
					<li><div class="divisionList">보컬</div></li>
					<li><div class="divisionList">작곡/작사</div></li>
					<li><div class="divisionList">악기</div></li>
					<li><div class="divisionList">미술</div></li>
				</ul></li>
			<li class="m m6"><a class="mm" href="#">여가생활</a>
				<ul class="gnblist2">
					<li><div class="divisionList">DIY가구</div></li>
					<li><div class="divisionList">가죽공예</div></li>
					<li><div class="divisionList">악세사리</div></li>
					<li><div class="divisionList">요리/베이킹</div></li>
					<li><div class="divisionList">기타</div></li>
				</ul></li>
			<li class="m m7"><a class="mm" href="#">직업교육</a>
				<ul class="gnblist2">
					<li><div class="divisionList">공무원시험</div></li>
					<li><div class="divisionList">컴퓨터</div></li>
					<li><div class="divisionList">CPA</div></li>
					<li><div class="divisionList">공인중개사</div></li>
					<li><div class="divisionList">기타</div></li>
					<li><div class="divisionList">방송</div></li>
				</ul></li>
			<div id="item">
				<a class="mm" href="#">관심항목</a>
			</div>
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
	<script type="text/javascript" src="<c:url value='/js/map2.js'/>"></script>

</body>
</html>