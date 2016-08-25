<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��췯 ���±� �α���</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/login.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/base.css'/>" />


</head>
<body>
	<div class="logo">
		<a href="main.do"><img src="images/logo.png"/></a>

		<ul class="util">
			<li><a href="#">LOGIN</a></li>
			<li><a href="#">MY PAGE</a></li>
		</ul>
		<hr>
		<a class="interest">���� �׸�</a>
	</div>

	<div class="container">
		<p class="login">LOGIN</p>
		
		<div class="login_form" >
			<form action="#" method="post">
				<div class="input_box">
					<input type="text"  class="login_id" placeholder=" ���̵�" />
					<hr>
					<input type="password"  class="login_pw" placeholder=" ��й�ȣ" />
				</div>
				<img class="login_img" src="images/login.png"/>
			</form>
			
			<img class="login_facebook" src="images/login_facebook.png"/>
			<img class="register" src="images/register.png"/>
			<img class="copyright" src="images/copyright.png"/>
		</div>
	</div>
</body>
</html>