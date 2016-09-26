<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
	request.setCharacterEncoding("UTF-8");

	String userId=request.getParameter("userId");
	String userName=request.getParameter("userName");
	String userLike=request.getParameter("userLike");
	
	if(userName!=null && !userName.equals("")){
	session.setAttribute("userId", userId);
	session.setAttribute("userName", userName);
	session.setAttribute("userLike", userLike);
	userName+=" 님";
	response.sendRedirect("main.do");
	}else{
		userName="LOGIN";
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>배가 : 로그인</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="<c:url value='/js/login.js'/>"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/login.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />


</head>
<body>
	<div class="logo">
		<a href="main.do"><img src="images/logo.png"/></a>

		<ul class="util">
			<li><a id="login_page" href="login.do" >LOGIN</a></li>
			<li><a href="mypage.do">MY PAGE</a></li>
			<li><a href="favorite.do">FAVORITE</a></li>
		</ul>
		<hr>
	</div>

	<div class="container">
		<div class="login_logo">
			<p class="login">LOGIN</p>
		</div>
		<div class="login_div" >
			<form id="login_form" action="login.do" method="post">
				<input type="hidden" id="userId" name="userId" value="">
				<input type="hidden" id="userName" name="userName" value="">
				<input type="hidden" id="userLike" name="userLike" value="">
				<div class="input_box">
					<input type="text" name="userId" class="login_id" placeholder=" 아이디" />
					<hr>
					<input type="password" name="userPw" id="login_pw" class="login_pw" placeholder=" 비밀번호" />
				</div>
				<div id="loginMsg" class="error" style="display: none">아이디 또는 비밀번호를 다시 확인하세요.</div>
				<img class="login_img" src="images/login.png"/>
			</form>
			
			<img class="login_facebook" src="images/login_facebook.png"/>
			<img class="register"  src="images/register.png"/>
			<img class="copyright" src="images/copyright.png"/>
		</div>
	</div>
</body>
</html>