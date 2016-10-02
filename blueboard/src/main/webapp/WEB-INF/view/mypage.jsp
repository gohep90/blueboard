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
<title>배가 : 마이페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/mypage.js'/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/mypage.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />


</head>
<body>
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
</body>
</html>