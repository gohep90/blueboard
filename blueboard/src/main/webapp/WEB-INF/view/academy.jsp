<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>학원 홈페이지</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/academy.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />


<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript"
	src="<c:url value='/js/jquery.slidertron-1.1.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/main.js'/>"></script>


</head>

<body>
	<header id="firstheader">
	<h1>
		<a href="main.do"><img src="images/logo.gif" alt="푸른 칠판" /></a>
	</h1>
	<nav id="gnb">
	<h1 class="skip">메인메뉴</h1>
	<ul class="gnblist">
		<li class="m m1"><a class="mm" href="#">교과목</a>
			<ul class="gnblist2">
				<li><a href="#">고등교육</a>
					<ul>
						<li><a href="#">국어</a></li>
						<li><a href="#">영어</a></li>
						<li><a href="#">수학</a></li>
						<li><a href="#">사회/과학</a></li>
						<li><a href="#">제2외국어</a></li>
						<li><a href="#">논술</a></li>
						<li><a href="#">예체능</a></li>
					</ul></li>
				<li><a href="#">중등교육</a>
					<ul>
						<li><a href="#">국어</a></li>
						<li><a href="#">영어</a></li>
						<li><a href="#">수학</a></li>
						<li><a href="#">사회/과학</a></li>
						<li><a href="#">제2외국어</a></li>
						<li><a href="#">논술</a></li>
						<li><a href="#">예체능</a></li>
					</ul></li>
				<li><a href="#">초등교육</a>
					<ul>
						<li><a href="#">국어</a></li>
						<li><a href="#">영어</a></li>
						<li><a href="#">수학</a></li>
						<li><a href="#">사회/과학</a></li>
						<li><a href="#">제2외국어</a></li>
						<li><a href="#">논술</a></li>
						<li><a href="#">예체능</a></li>
					</ul></li>
				<li><a href="#">유아교육</a></li>
			</ul></li>

		<li class="m m2"><a class="mm" href="#">외국어</a>
			<ul class="gnblist2">
				<li><a href="#">영어</a>
					<ul>
						<li><a href="#">자격증</a></li>
						<li><a href="#">회화</a></li>
					</ul></li>
				<li><a href="#">중국어</a><
					<ul>
						<li><a href="#">자격증</a></li>
						<li><a href="#">회화</a></li>
					</ul></li>
				<li><a href="#">일본어</a>
					<ul>
						<li><a href="#">자격증</a></li>
						<li><a href="#">회화</a></li>
					</ul></li>
				<li><a href="#">스페인어</a>
					<ul>
						<li><a href="#">자격증</a></li>
						<li><a href="#">회화</a></li>
					</ul></li>
				<li><a href="#">기타언어</a></li>
			</ul></li>
		<li class="m m3"><a class="mm" href="#">운동</a>
			<ul class="gnblist2">
				<li><a href="#">실내운동</a>
					<ul>
						<li><a href="#">피트니스</a></li>
						<li><a href="#">크로스핏</a></li>
						<li><a href="#">요가</a></li>
						<li><a href="#">필라테스</a></li>
						<li><a href="#">수영</a></li>
						<li><a href="#">기타</a></li>
					</ul></li>
				<li><a href="#">실외운동</a></li>
				<li><a href="#">계절 스포츠</a></li>
			</ul></li>
		<li class="m m4"><a class="mm" href="#">음악</a>
			<ul>
				<li><a href="#">보컬</a></li>
				<li><a href="#">악기</a></li>
			</ul></li>
		<li class="m m5"><a class="mm" href="#">미술/공예</a>
			<ul class="gnblist2">
				<li><a href="#">미술</a></li>
				<li><a href="#">공예</a>
					<ul>
						<li><a href="#">가구 공방</a></li>
						<li><a href="#">액세서리 공방</a></li>
					</ul></li>
			</ul></li>
	</ul>
	</nav> </header>

	<div id="main_content">

		<div id="academy_info">
			<h1>학원정보</h1>

		</div>
		<div id="slider">
			<div class="viewer">
				<div class="reel">
					<div class="slide">
						<a class="link" href="#">Full story ...</a> <img
							src="images/academy1.jpg" alt="" />
					</div>
					<div class="slide">
						<a class="link" href="#">Full story ...</a> <img
							src="images/academy2.jpg" alt="" />
					</div>
					<div class="slide">
						<a class="link" href="#">Full story ...</a> <img
							src="images/academy3.jpg" alt="" />
					</div>
					<div class="slide">
						<a class="link" href="#">Full story ...</a> <img
							src="images/academy4.jpg" alt="" />
					</div>
					<div class="slide">
						<a class="link" href="#">Full story ...</a> <img
							src="images/new_book1.jpg" alt="" />
					</div>
				</div>
			</div>
			<div class="indicator">
				<ul>
					<li class="active">1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
				</ul>
			</div>

		</div>
		<script type="text/javascript">
		$('#slider').slidertron({
			viewerSelector: '.viewer',
			reelSelector: '.viewer .reel',
			slidesSelector: '.viewer .reel .slide',
			advanceDelay: 3000,
			speed: 'slow',
			navPreviousSelector: '.previous-button',
			navNextSelector: '.next-button',
			indicatorSelector: '.indicator ul li',
			slideLinkSelector: '.link'
		});
	</script>
		<div id="class_video">
			<div id="select">
				<select id="selectmenu">
					<option value="0" selected="selected">첫번째옵션</option>
					<option value="1">두번째옵션</option>
					<option value="2">세번째옵션</option>
				</select>
			</div>
			<div id="video">
					<video src="video/column.mp4" width="480" height="332" controls>
					</video>
			</div>
		</div>
		<div id="class_info">수업정보</div>
	</div>

</body>
</html>
