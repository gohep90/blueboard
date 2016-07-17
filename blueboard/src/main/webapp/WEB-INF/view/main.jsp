<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>배우러 가는길</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/main.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />
<!--[if lte IE 9]>
<link rel="stylesheet" type="text/css" href="css/main_ie.css" />
<![endif]-->

<script type="text/javascript" src="<c:url value='/js/main.js'/>"></script>

</head>

<body>
	<header id="firstheader">
	<h1>
		<a href="main.do"><img src="images/logo.png"  alt="푸른 칠판" /></a>
	</h1>
	<ul class="util2">
		<li><a href="#">JOIN</a></li>
	</ul>
	<ul class="util">
		<li><a href="#">LOGIN</a></li>
		<li><a href="#">SITEMAP</a></li>
		<li><a href="#">ABOUT US</a></li>
	</ul>

	</header>
	<div id="main_content">

		<img src="images/main image.png" alt="푸른 칠판" />


	</div>
	<div id="content">
		<h1>그런 당신을 위한 69,000개의 교육이 여기,당신을 기다리고 있습니다</h1>

		<form name="sform" action="#" method="get" id="sform">
		<fieldset>
			<legend class="skip">통합검색</legend>	
			<label for="sbox" class="skip">통합 검색어 입력</label><input type="search" id="sbox" class="tbox" placeholder="통합 검색어 입력" />
        	<input type="image" class="sbtn" src="images/search.png" alt="검색" />
        </fieldset>
		</form>
	</div>
	<div id="main_subject">
		<div id="subject1">
			<a href='map.do'><img src="images/sq_01.png" alt="무엇을 배울까요?" /></a>
		</div>
		<div id="subject2" onclick="post_to_url('map.do',{'highDivision':'유아/초등'})">
			<img src="images/sq_02.png" alt="유아/초등" />
		</div>
		<div id="subject3" onclick="post_to_url('map.do',{'highDivision':'내신/입시'})">
			<img src="images/sq_03.png" alt="내신/입시" />
		</div>
		<div id="subject4" onclick="post_to_url('map.do',{'highDivision':'스포츠'})">
			<img src="images/sq_04.png" alt="스포츠/댄스" />
		</div>
		<div id="subject5" onclick="post_to_url('map.do',{'highDivision':'음악/미술'})">
			<img src="images/sq_05.png" alt="음악/미술" />
		</div>
		<div id="subject6" onclick="post_to_url('map.do',{'highDivision':'여가생활'})">
			<img src="images/sq_06.png" alt="여가생활" />
		</div>
		<div id="subject7" onclick="post_to_url('map.do',{'highDivision':'외국어'})">
			<img src="images/sq_07.png" alt="외국어" />
		</div>
		<div id="subject8" onclick="post_to_url('map.do',{'highDivision':'직업교육'})">
			<img src="images/sq_08.png" alt="직업교육" />
		</div>
		<div id="subject9" >
			<img src="images/sq_09.png" alt="관심항목 바로가기" />
		</div>
	</div>
	<hr />
	<footer id="main_footer">
	<h3>
		(주)푸른 칠판<br />대표이사:장지웅<br />최고가 되자<br /> <small class="copy">Copyright
			&copy; 2016 Icox Education</small>
	</h3>
	</footer>
</body>
</html>
