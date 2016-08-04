<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>배우러 가는길 학원 홈페이지</title>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/academy.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/reset.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/teb.css'/>"/>


<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript"
	src="<c:url value='/js/jquery.slidertron-1.1.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/academy.js'/>"></script>
</head>


<body>
	<header id="firstheader">
	<h1>
		<a href="main.do"><img src="images/MAINPAGE/minimal_LOGO.png"
			alt="푸른 칠판" /></a>
	</h1>
	<hr style="border: dotted 1px white;">
	<ul class="util2">
		<li><a href="#">JOIN</a></li>
	</ul>
	<ul class="util">
		<li><a href="#">LOGIN</a></li>
		<li><a href="#">SITEMAP</a></li>
		<li><a href="#">ABOUT US</a></li>
	</ul>
	<nav id="gnb">
	<h1 class="skip">메인메뉴</h1>
	<ul class="gnblist">
		<li class="m m2"><a class="mm" href="#">유아/초등</a>
			<ul class="gnblist2">
				<li onclick="test('좋아')">초등 <!--<ul>
                    	<li><a href="#">국어</a></li>
                        <li><a href="#">영어</a></li>
                        <li><a href="#">수학</a></li>
                        <li><a href="#">사회/과학</a></li>
                        <li><a href="#">제2외국어</a></li>
                        <li><a href="#">논술</a></li>
                        <li><a href="#">예체능</a></li>
                    </ul>-->
				</li>
				<li>영재교육 <!--<ul>
                    	<li><a href="#">국어</a></li>
                        <li><a href="#">영어</a></li>
                        <li><a href="#">수학</a></li>
                        <li><a href="#">사회/과학</a></li>
                        <li><a href="#">제2외국어</a></li>
                        <li><a href="#">논술</a></li>
                        <li><a href="#">예체능</a></li>
                    </ul>-->
				</li>
				<li>유아 <!-- <ul>
                    	<li><a href="#">국어</a></li>
                        <li><a href="#">영어</a></li>
                        <li><a href="#">수학</a></li>
                        <li><a href="#">사회/과학</a></li>
                        <li><a href="#">제2외국어</a></li>
                        <li><a href="#">논술</a></li>
                        <li><a href="#">예체능</a></li>
                    </ul>-->
				</li>
			</ul></li>

		<li class="m m2"><a class="mm" href="#">내신/입시</a>
			<ul class="gnblist2">
				<li>고등</li>
				<li>논술</li>
				<li>중등</li>
			</ul></li>
		<li class="m m3"><a class="mm" href="#">외국어</a>
			<ul class="gnblist2">
				<li>영어</li>
				<li>중국어</li>
				<li>일본어</li>
				<li>스페인어</li>
				<li>기타언어</li>
			</ul></li>
		<li class="m m4"><a class="mm" href="#">스포츠</a>
			<ul class="gnblist2">
				<li>피트니스</li>
				<li>요가</li>
				<li>필라테스</li>
				<li>태권도</li>
				<li>수영</li>
				<li>댄스/무용</li>
				<li>격투기</li>
				<li>기타</li>
			</ul></li>
		<li class="m m5"><a class="mm" href="#">음악/미술</a>
			<ul class="gnblist2">
				<li>보컬</li>
				<li>작곡/작사</li>
				<li>악기</li>
				<li>미술</li>
			</ul></li>
		<li class="m m6"><a class="mm" href="#">여가생활</a>
			<ul class="gnblist2">
				<li>DIY가구</li>
				<li>가죽공예</li>
				<li>악세사리</li>
				<li>요리/베이킹</li>
				<li>기타</li>
			</ul></li>
		<li class="m m7"><a class="mm" href="#">직업교육</a>
			<ul class="gnblist2">
				<li>공무원시험</li>
				<li>컴퓨터</li>
				<li>CPA</li>
				<li>공인중개사</li>
				<li>기타</li>
				<li>방송</li>
			</ul></li>
		<div id="item">
			<a class="mm" href="#">관심등록</a>
		</div>
	</ul>

	</nav> </header>

	<div id="main_content">
		<img id="interest" src="images/PLUS.png" / width="230">
		<div id="academy_name">학원이름</div>
		<img src="images/BAR.png" alt="바" id="bar" />

		<div id=teb>
			<div id="css_tabs">
				<!-- 라디오 버튼 -->
				<input id="tab1" type="radio" name="tab" checked="checked" /> <input
					id="tab2" type="radio" name="tab" /> <input id="tab3" type="radio"
					name="tab" /> <input id="tab4" type="radio" name="tab" />
				<!-- 라벨 : 화면에 표시되는 탭 제목 -->
				<label for="tab1"><h1>강사정보</h1>
					<p>Information</p></label> <label for="tab2"><h1>강의내용</h1>
					<p>Contents</p></label> <label for="tab3"><h1>강의장소</h1>
					<p>Place</p></label> <label for="tab4"><h1>수강후기</h1>
					<p>Comment</p></label>

				<!-- 탭 내용 : 탭 제목을 선택했을 때 표시되는 본문 -->
				<div class="tab1_content">
					<div id="slider">

						<div class="viewer">
							<div class="reel">
								<div class="slide">
									<a class="link" href="#">Full story ...</a> <img
										src="images/eximg.jpg" alt="" />
								</div>
								<div class="slide">
									<a class="link" href="#">Full story ...</a> <img
										src="images/지도예시이미지.png" alt="" />
								</div>
								<div class="slide">
									<a class="link" href="#">Full story ...</a> <img
										src="images/지도예시이미지.png" alt="" />
								</div>
								<div class="slide">
									<a class="link" href="#">Full story ...</a> <img
										src="images/지도예시이미지.png" alt="" />
								</div>
								<div class="slide">
									<a class="link" href="#">Full story ...</a> <img
										src="images/지도예시이미지.png" alt="" />
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
						<script type="text/javascript">
	$(function(){
		$("#selectmenu").selectmenu();
	})
	</script>
					</div>

				</div>
				<div class="tab2_content">Tab2 내용</div>
				<div class="tab3_content">Tab3 내용</div>
				<div class="tab4_content">Tab4 내용</div>
			</div>

		</div>
	</div>
	</div>
	<blockquote>&nbsp;</blockquote>
</body>
</html>
