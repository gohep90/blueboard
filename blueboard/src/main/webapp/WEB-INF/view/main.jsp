<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");

	String userId=(String)session.getAttribute("userId");
	String userName=(String)session.getAttribute("userName");
	System.out.println("main : "+userName);
	if(userName!=null && !userName.equals("")){
	userName+=" 님";
	//response.sendRedirect("HighLevelUI.html");
	}else{
		userName="LOGIN";
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배우러 가는길</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/main.js'/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/main.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />

</head>

<body>
	<div class="main_content">
		<div class="logo">
			<a href="main.do"><img src="images/logo.png" /></a>

			<ul class="util">
				<li id="userName" style="display:none; cursor: pointer;"><%=userName%></li>
				<li id="login" ><a  href="login.do">LOGIN</a></li>
				<li id="logout" style="display:none; cursor: pointer;">LOGOUT</li>
				<li><a href="mypage.do">MY PAGE</a></li>
				<li><a href="favorite.do">FAVORITE</a></li>
			</ul>
			<hr>
		</div>
		
		<script type="text/javascript" src="<c:url value='/js/logout.js'/>"></script>
		

		<div class="logo_content">
			<div class="content">
				<img class="content_logo" src="images/MAINPAGE/LOGO(Main)_Wh.png" />
				<img class="content_text" src="images/MAINPAGE/text.png"/>
			</div>
			<div class="content_search">
				<form name="sform" action="#" method="get" id="sform">
					<input type="search" id="keyword" class="tbox" placeholder="무엇을 배우러 갈까요?" />
					<input type="image" class="sbtn" src="images/search2.png" alt="검색" />
				</form>
			</div>
		</div>

	</div>
	<div class="category_div">
		<a href="map.do?lCategory=스포츠"><img class="category_img" src="images/MAINPAGE/sport.png" /></a>
		<a href="map.do?lCategory=외국어"><img class="category_img" src="images/MAINPAGE/language.png" /></a>
		<a href="map.do?lCategory=취미"><img class="category_img" src="images/MAINPAGE/favorite.png" /> </a>
		<a href="map.do?lCategory=음악/미술"><img class="category_img" src="images/MAINPAGE/music.png" /> </a>
		<a href="map.do?lCategory=직업교육"><img class="category_img" src="images/MAINPAGE/job.png" /></a>
	</div>

	<div class="info_div">
		<div class="info_bottom">
			<div class="info_logo">배우러가는길</div>
			<div class="info-address">
				<p class="info_text">대표 : 장지웅</p>
				<p class="info_text">주소 : 서울시 성동구 왕십리로 222 한양대학교 정책대학교 704호</p>
				<p class="info_text"><span>전화 : 02-234-5678 </span><span class="fax"> 팩스 :
						02-554-9774</span></p>
			</div>
			<div class="info-address">
				<p class="info_text">사업자 번호 : 220-88-59156</p>
				<p class="info_text">문의메일 : biz@station3.co.kr</p>
				<p class="info_text">2016/07/28 ® All rights reserved by BAEGA.</p>
			</div>
		</div>
	</div>

</body>
</html>
