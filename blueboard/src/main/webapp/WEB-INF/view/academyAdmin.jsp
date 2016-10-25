<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");

	String userId=(String)session.getAttribute("userId");
	String userName=(String)session.getAttribute("userName");
	String userLike=(String)session.getAttribute("userLike");
	
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
<title>배가 : 강좌 등록 수정</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="<c:url value='/css/academyAdmin.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/base.css'/>" />

</head>


<body onload="gotoPage(1)">
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
	

	<div class="map_wrap">
		<img id="Title2" src="images/academyAdmin.png" width="400">
		<div id="register"><img class="favoriteCancel" src="images/newAcademy.png"></div>
		<div id="menu_wrap" class="bg_white">
			<hr>
			<ul id="placesList"></ul>
		</div>
		<div id="pagination"></div>
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
	
	<script type="text/javascript" src="<c:url value='/js/academyAdmin.js'/>"></script>

</body>
</html>