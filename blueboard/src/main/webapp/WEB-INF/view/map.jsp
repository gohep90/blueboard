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
<script type="text/javascript" src="<c:url value='/js/main.js'/>"></script>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/map2.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />




</head>

<body>
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
					<li><a href="#">초등</a> <!--<ul>
                    	<li><a href="#">국어</a></li>
                        <li><a href="#">영어</a></li>
                        <li><a href="#">수학</a></li>
                        <li><a href="#">사회/과학</a></li>
                        <li><a href="#">제2외국어</a></li>
                        <li><a href="#">논술</a></li>
                        <li><a href="#">예체능</a></li>
                    </ul>--></li>
					<li><a href="#">영재교육</a> <!--<ul>
                    	<li><a href="#">국어</a></li>
                        <li><a href="#">영어</a></li>
                        <li><a href="#">수학</a></li>
                        <li><a href="#">사회/과학</a></li>
                        <li><a href="#">제2외국어</a></li>
                        <li><a href="#">논술</a></li>
                        <li><a href="#">예체능</a></li>
                    </ul>--></li>
					<li><a href="#">유아</a> <!-- <ul>
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
					<li><a href="#">고등</a></li>
					<li><a href="#">논술</a></li>
					<li><a href="#">중등</a></li>
				</ul></li>
			<li class="m m3"><a class="mm" href="#">외국어</a>
				<ul class="gnblist2">
					<li><a href="#">영어</a></li>
					<li><a href="#">중국어</a></li>
					<li><a href="#">일본어</a></li>
					<li><a href="#">스페인어</a></li>
					<li><a href="#">기타언어</a></li>
				</ul></li>
			<li class="m m4"><a class="mm" href="#">스포츠</a>
				<ul>
					<li><a href="#">피트니스</a></li>
					<li><a href="#">요가</a></li>
					<li><a href="#">필라테스</a></li>
					<li><a href="#">태권도</a></li>
					<li><a href="#">수영</a></li>
					<li><a href="#">댄스/무용</a></li>
					<li><a href="#">격투기</a></li>
					<li><a href="#">기타</a></li>
				</ul></li>
			<li class="m m5"><a class="mm" href="#">음악/미술</a>
				<ul class="gnblist2">
					<li><a href="#">보컬</a></li>
					<li><a href="#">작곡/작사</a></li>
					<li><a href="#">악기</a></li>
					<li><a href="#">미술</a></li>
				</ul></li>
			<li class="m m6"><a class="mm" href="#">여가생활</a>
				<ul class="gnblist2">
					<li><a href="#">DIY가구</a></li>
					<li><a href="#">가죽공예</a></li>
					<li><a href="#">악세사리</a></li>
					<li><a href="#">요리/베이킹</a></li>
					<li><a href="#">기타</a></li>
				</ul></li>
			<li class="m m7"><a class="mm" href="#">직업교육</a>
				<ul class="gnblist2">
					<li><a href="#">공무원시험</a></li>
					<li><a href="#">컴퓨터</a></li>
					<li><a href="#">CPA</a></li>
					<li><a href="#">공인중개사</a></li>
					<li><a href="#">기타</a></li>
					<li><a href="#">방송</a></li>
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