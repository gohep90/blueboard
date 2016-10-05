<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");

	String userId=(String)session.getAttribute("userId");
	String userName=(String)session.getAttribute("userName");
	String userCode=(String)session.getAttribute("userCode");
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
<title>배가 : 마이페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/mypage.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />


</head>
<body>
	<p id="userCode" style="display:none;"><%=userCode%></p>
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

	<div class="container">
		<div class="login_logo">
			<p class="login">MY PAGE</p>
		</div>
		<img id="modify" class="start_icon" src="images/person.png" />
		<img id="register" class="start_icon" src="images/academyEnroll.png"/>
		<img class="copyright" src="images/copyright.png"/>
	</div>
	
	
	<!-- 하단바 -->
	<div class="info_div">
		<div class="info_bottom">
			<div class="info_logo">배우러가는길</div>
			<div class="info-address">
				<p class="info_text">대표 : 장지웅</p>
				<p class="info_text">주소 : 서울시 성동구 왕십리로 222 한양대학교 정책대학교 704호</p>
				<p class="info_text">
					<span>전화 : 02-234-5678 </span><span class="fax"> 팩스 :
						02-554-9774</span>
				</p>
			</div>
			<div class="info-address">
				<p class="info_text">사업자 번호 : 220-88-59156</p>
				<p class="info_text">문의메일 : biz@station3.co.kr</p>
				<p class="info_text">2016/07/28 ® All rights reserved by BAEGA.</p>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="<c:url value='/js/mypage.js'/>"></script>
</body>
</html>