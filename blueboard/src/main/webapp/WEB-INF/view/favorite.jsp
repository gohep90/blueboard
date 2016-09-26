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
<title>배가 : 관심항목</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/favorite.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />

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
		<img id="Title2" src="images/favorite/favorite.png" width="270">
		<div id="menu_wrap" class="bg_white">
			<hr>
			<ul id="placesList"></ul>
		</div>
		<div id="pagination"></div>
	</div>
	
	<script type="text/javascript" src="<c:url value='/js/favorite.js'/>"></script>

</body>
</html>