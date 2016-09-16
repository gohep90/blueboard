<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");

	String userId=(String)session.getAttribute("userId");
	String userName=(String)session.getAttribute("userName");
	
	if(userName!=null && !userName.equals("")){
	userName+=" 님";
	}else{
		userName="LOGIN";
	}
%>

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
			<li><a href="login.do"><%=userName%></a></li>
			<li><a href="mypage.do">MY PAGE</a></li>
			<li><a href="#">FAVORITE</a></li>
		</ul>
		<hr>
	</div>
	
	<div id="gnb">
		<ul class="gnblist">
			<li class="highLi"><div class="high">스포츠</div>
				<ul class="gnblist2">
					<li class="middle">피트니스</li>
					<li class="middle">요가</li>
					<li class="middle">필라테스</li>
					<li class="middle">스피닝</li>
					<li class="middle">댄스</li>
					<li class="middle">격투기</li>
					<li class="middle">수영</li>
				</ul></li>

			<li class="highLi" ><div class="high">외국어</div>
				<ul class="gnblist2">
					<li class="middle">영어</li>
					<li class="middle">중국어</li>
					<li class="middle">일본어</li>
					<li class="middle">스페인어</li>
					<li class="middle">프랑스어</li>
					<li class="middle">독일어</li>
					<li class="middle">회화</li>
				</ul></li>
			<li class="highLi" ><div class="high">취미</div>
				<ul class="gnblist2">
					<li class="middle">요리</li>
					<li class="middle">베이킹</li>
					<li class="middle">바리스타</li>
					<li class="middle">DIY</li>
					<li class="middle">연기</li>
					<li class="middle">플로리스트</li>
				</ul></li>
			<li class="highLi" ><div class="high">음악/미술</div>
				<ul>
					<li class="middle">기타/베이스</li>
					<li class="middle">피아노/키보드</li>
					<li class="middle">드럼</li>
					<li class="middle">보컬</li>
					<li class="middle">작사/작곡</li>
					<li class="middle">취미미술</li>
				</ul></li>
			<li class="highLi" ><div class="high">직업교육</div>
				<ul class="gnblist2">
					<li class="middle">컴퓨터</li>
					<li class="middle">프로그래밍</li>
					<li class="middle">그래픽아트</li>
					<li class="middle">스피치</li>
				</ul>
			</li>
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
			<div class="search_option">
				<a href="#" class="txt_option">조회순 |</a><a href="#" class="txt_option">가격순 |</a><a href="#" class="txt_option">평점순</a>
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